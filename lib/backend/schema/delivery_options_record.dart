import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryOptionsRecord extends FirestoreRecord {
  DeliveryOptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DeliveryOptions');

  static Stream<DeliveryOptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryOptionsRecord.fromSnapshot(s));

  static Future<DeliveryOptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryOptionsRecord.fromSnapshot(s));

  static DeliveryOptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryOptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryOptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryOptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryOptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryOptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryOptionsRecordData({
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryOptionsRecordDocumentEquality
    implements Equality<DeliveryOptionsRecord> {
  const DeliveryOptionsRecordDocumentEquality();

  @override
  bool equals(DeliveryOptionsRecord? e1, DeliveryOptionsRecord? e2) {
    return e1?.description == e2?.description;
  }

  @override
  int hash(DeliveryOptionsRecord? e) =>
      const ListEquality().hash([e?.description]);

  @override
  bool isValidKey(Object? o) => o is DeliveryOptionsRecord;
}
