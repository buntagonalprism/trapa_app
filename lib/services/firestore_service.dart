import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

@injectable
class FirestoreService {
  final _fs = FirebaseFirestore.instance;

  ObservableStream<List<T>> collectionSnapshots<T>({
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
    return ObservableStream(query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        if (idFieldName != null) {
          data[idFieldName] = doc.id;
        }
        return fromJson(data);
      }).toList();
    }));
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
