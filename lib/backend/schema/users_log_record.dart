import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersLogRecord extends FirestoreRecord {
  UsersLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "logDate" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  bool hasLogDate() => _logDate != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _logDate = snapshotData['logDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UsersLog');

  static Stream<UsersLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersLogRecord.fromSnapshot(s));

  static Future<UsersLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersLogRecord.fromSnapshot(s));

  static UsersLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersLogRecordData({
  String? description,
  DateTime? logDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'logDate': logDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersLogRecordDocumentEquality implements Equality<UsersLogRecord> {
  const UsersLogRecordDocumentEquality();

  @override
  bool equals(UsersLogRecord? e1, UsersLogRecord? e2) {
    return e1?.description == e2?.description && e1?.logDate == e2?.logDate;
  }

  @override
  int hash(UsersLogRecord? e) =>
      const ListEquality().hash([e?.description, e?.logDate]);

  @override
  bool isValidKey(Object? o) => o is UsersLogRecord;
}
