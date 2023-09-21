import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvincesRecord extends FirestoreRecord {
  ProvincesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Provinces');

  static Stream<ProvincesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProvincesRecord.fromSnapshot(s));

  static Future<ProvincesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProvincesRecord.fromSnapshot(s));

  static ProvincesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProvincesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProvincesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProvincesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProvincesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProvincesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProvincesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProvincesRecordDocumentEquality implements Equality<ProvincesRecord> {
  const ProvincesRecordDocumentEquality();

  @override
  bool equals(ProvincesRecord? e1, ProvincesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(ProvincesRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is ProvincesRecord;
}
