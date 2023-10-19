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

  Future<void> updateDocument({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await _fs.doc(path).update(data);
  }

  /// [data] must either already be a `Map<String, dynamic>`, or have a [toJson] method returning a
  /// `Map<String, dynamic>`. All nested child properties of [data] must either be of primitive type
  /// or have their own [toJson] method.
  Future<void> addDocument({
    required String collectionPath,
    String? docId,
    required dynamic data,
  }) async {
    await _fs.collection(collectionPath).doc(docId).set(_objectToFirestore(data));
  }

  Map<String, dynamic> _objectToFirestore(dynamic data) {
    Map<String, dynamic> firestoreData;
    if (data is Map<String, dynamic>) {
      firestoreData = Map.from(data);
    } else {
      firestoreData = data.toJson();
    }
    for (var key in firestoreData.keys) {
      final value = firestoreData[key];
      firestoreData[key] = _valueToFirestore(value);
    }
    return firestoreData;
  }

  dynamic _valueToFirestore(dynamic value) {
    if (value is String || value is double || value is bool || value == null) {
      return value;
    } else if (value is List) {
      return value.map((e) => _valueToFirestore(e)).toList();
    } else {
      return _objectToFirestore(value);
    }
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
