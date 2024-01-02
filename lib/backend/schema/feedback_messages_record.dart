import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackMessagesRecord extends FirestoreRecord {
  FeedbackMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedbackMessages');

  static Stream<FeedbackMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackMessagesRecord.fromSnapshot(s));

  static Future<FeedbackMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FeedbackMessagesRecord.fromSnapshot(s));

  static FeedbackMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackMessagesRecordData({
  String? message,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackMessagesRecordDocumentEquality
    implements Equality<FeedbackMessagesRecord> {
  const FeedbackMessagesRecordDocumentEquality();

  @override
  bool equals(FeedbackMessagesRecord? e1, FeedbackMessagesRecord? e2) {
    return e1?.message == e2?.message && e1?.name == e2?.name;
  }

  @override
  int hash(FeedbackMessagesRecord? e) =>
      const ListEquality().hash([e?.message, e?.name]);

  @override
  bool isValidKey(Object? o) => o is FeedbackMessagesRecord;
}
