import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryLogsRecord extends FirestoreRecord {
  InventoryLogsRecord._(
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
      FirebaseFirestore.instance.collection('InventoryLogs');

  static Stream<InventoryLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryLogsRecord.fromSnapshot(s));

  static Future<InventoryLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryLogsRecord.fromSnapshot(s));

  static InventoryLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryLogsRecordData({
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

class InventoryLogsRecordDocumentEquality
    implements Equality<InventoryLogsRecord> {
  const InventoryLogsRecordDocumentEquality();

  @override
  bool equals(InventoryLogsRecord? e1, InventoryLogsRecord? e2) {
    return e1?.description == e2?.description && e1?.logDate == e2?.logDate;
  }

  @override
  int hash(InventoryLogsRecord? e) =>
      const ListEquality().hash([e?.description, e?.logDate]);

  @override
  bool isValidKey(Object? o) => o is InventoryLogsRecord;
}
