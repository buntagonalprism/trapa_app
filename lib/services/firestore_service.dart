import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../models/api/network_observable.dart';

@injectable
class FirestoreService {
  final _fs = FirebaseFirestore.instance;

  NetworkObservable<T> documentSnapshots<T>({
    required String path,
    required T Function(Map<String, dynamic> data) fromJson,
    String? idFieldName = 'id',
  }) {
    final stream =
        ObservableStream<_FirestoreSnapshotSource<T>?>(_fs.doc(path).snapshots().map((snapshot) {
      if (!snapshot.exists) {
        return null;
      }
      final data = Map<String, dynamic>.from(snapshot.data()!);
      if (idFieldName != null) {
        data[idFieldName] = snapshot.id;
      }
      return _FirestoreSnapshotSource(
        data: fromJson(data),
        isFromCache: snapshot.metadata.isFromCache,
      );
    }));
    return Computed<NetworkDataSnapshot<T>>(() {
      if (stream.status == StreamStatus.waiting) {
        return const NetworkDataSnapshot.loading();
      } else if (stream.hasError) {
        return const NetworkDataSnapshot.unknownError();
      } else {
        final value = stream.value;
        if (value == null) {
          return const NetworkDataSnapshot.notFound();
        }
        return NetworkDataSnapshot.data(
          value.data,
          value.isFromCache ? DataSource.local : DataSource.server,
        );
      }
    });
  }

  NetworkObservable<List<T>> collectionSnapshots<T>({
    required String path,
    required T Function(Map<String, dynamic> data) fromJson,
    List<FirestoreFieldQuery> fieldQueries = const [],
    String? idFieldName = 'id',
  }) {
    Query<Map<String, dynamic>> query = _fs.collection(path);
    for (final fieldQuery in fieldQueries) {
      switch (fieldQuery.operator) {
        case FirestoreQueryOperator.arrayContains:
          query = query.where(fieldQuery.fieldName, arrayContains: fieldQuery.fieldValue);
          break;
      }
    }
    final stream = ObservableStream(query.snapshots().map((snapshot) {
      final docs = snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        if (idFieldName != null) {
          data[idFieldName] = doc.id;
        }
        return fromJson(data);
      }).toList();
      return _FirestoreSnapshotSource(isFromCache: snapshot.metadata.isFromCache, data: docs);
    }));
    return Computed<NetworkDataSnapshot<List<T>>>(() {
      if (stream.status == StreamStatus.waiting) {
        return const NetworkDataSnapshot.loading();
      } else if (stream.hasError) {
        return const NetworkDataSnapshot.unknownError();
      } else {
        final value = stream.value;
        if (value == null) {
          return const NetworkDataSnapshot.notFound();
        }
        return NetworkDataSnapshot.data(
          value.data,
          value.isFromCache ? DataSource.local : DataSource.server,
        );
      }
    });
  }
}

class FirestoreFieldQuery {
  FirestoreFieldQuery({
    required this.fieldName,
    required this.fieldValue,
    required this.operator,
  });

  final String fieldName;
  final String fieldValue;
  final FirestoreQueryOperator operator;
}

enum FirestoreQueryOperator {
  arrayContains,
}

class _FirestoreSnapshotSource<T> {
  _FirestoreSnapshotSource({
    required this.isFromCache,
    required this.data,
  });
  final bool isFromCache;
  final T data;
}
