import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressesRecord extends FirestoreRecord {
  AddressesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "deliveryOption" field.
  DocumentReference? _deliveryOption;
  DocumentReference? get deliveryOption => _deliveryOption;
  bool hasDeliveryOption() => _deliveryOption != null;

  // "nameAddress" field.
  String? _nameAddress;
  String get nameAddress => _nameAddress ?? '';
  bool hasNameAddress() => _nameAddress != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _deliveryOption = snapshotData['deliveryOption'] as DocumentReference?;
    _nameAddress = snapshotData['nameAddress'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Addresses');

  static Stream<AddressesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressesRecord.fromSnapshot(s));

  static Future<AddressesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressesRecord.fromSnapshot(s));

  static AddressesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressesRecordData({
  String? address,
  DocumentReference? deliveryOption,
  String? nameAddress,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'deliveryOption': deliveryOption,
      'nameAddress': nameAddress,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressesRecordDocumentEquality implements Equality<AddressesRecord> {
  const AddressesRecordDocumentEquality();

  @override
  bool equals(AddressesRecord? e1, AddressesRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.deliveryOption == e2?.deliveryOption &&
        e1?.nameAddress == e2?.nameAddress &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(AddressesRecord? e) => const ListEquality()
      .hash([e?.address, e?.deliveryOption, e?.nameAddress, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is AddressesRecord;
}
