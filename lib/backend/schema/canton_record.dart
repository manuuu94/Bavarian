import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CantonRecord extends FirestoreRecord {
  CantonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  bool hasProvince() => _province != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _province = snapshotData['province'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Canton');

  static Stream<CantonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CantonRecord.fromSnapshot(s));

  static Future<CantonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CantonRecord.fromSnapshot(s));

  static CantonRecord fromSnapshot(DocumentSnapshot snapshot) => CantonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CantonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CantonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CantonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CantonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCantonRecordData({
  String? name,
  String? province,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'province': province,
    }.withoutNulls,
  );

  return firestoreData;
}

class CantonRecordDocumentEquality implements Equality<CantonRecord> {
  const CantonRecordDocumentEquality();

  @override
  bool equals(CantonRecord? e1, CantonRecord? e2) {
    return e1?.name == e2?.name && e1?.province == e2?.province;
  }

  @override
  int hash(CantonRecord? e) =>
      const ListEquality().hash([e?.name, e?.province]);

  @override
  bool isValidKey(Object? o) => o is CantonRecord;
}
