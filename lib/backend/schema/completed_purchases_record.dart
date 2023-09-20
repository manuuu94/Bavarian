import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompletedPurchasesRecord extends FirestoreRecord {
  CompletedPurchasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "products" field.
  List<String>? _products;
  List<String> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "idPurchase" field.
  int? _idPurchase;
  int get idPurchase => _idPurchase ?? 0;
  bool hasIdPurchase() => _idPurchase != null;

  // "quantity" field.
  List<int>? _quantity;
  List<int> get quantity => _quantity ?? const [];
  bool hasQuantity() => _quantity != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "ifCompleted" field.
  bool? _ifCompleted;
  bool get ifCompleted => _ifCompleted ?? false;
  bool hasIfCompleted() => _ifCompleted != null;

  void _initializeFields() {
    _products = getDataList(snapshotData['products']);
    _address = snapshotData['address'] as String?;
    _uid = snapshotData['uid'] as String?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _idPurchase = castToType<int>(snapshotData['idPurchase']);
    _quantity = getDataList(snapshotData['quantity']);
    _email = snapshotData['email'] as String?;
    _customerName = snapshotData['customerName'] as String?;
    _customerPhone = snapshotData['customerPhone'] as String?;
    _ifCompleted = snapshotData['ifCompleted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CompletedPurchases');

  static Stream<CompletedPurchasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompletedPurchasesRecord.fromSnapshot(s));

  static Future<CompletedPurchasesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompletedPurchasesRecord.fromSnapshot(s));

  static CompletedPurchasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompletedPurchasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompletedPurchasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompletedPurchasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompletedPurchasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompletedPurchasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompletedPurchasesRecordData({
  String? address,
  String? uid,
  double? subtotal,
  int? idPurchase,
  String? email,
  String? customerName,
  String? customerPhone,
  bool? ifCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'uid': uid,
      'subtotal': subtotal,
      'idPurchase': idPurchase,
      'email': email,
      'customerName': customerName,
      'customerPhone': customerPhone,
      'ifCompleted': ifCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompletedPurchasesRecordDocumentEquality
    implements Equality<CompletedPurchasesRecord> {
  const CompletedPurchasesRecordDocumentEquality();

  @override
  bool equals(CompletedPurchasesRecord? e1, CompletedPurchasesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.products, e2?.products) &&
        e1?.address == e2?.address &&
        e1?.uid == e2?.uid &&
        e1?.subtotal == e2?.subtotal &&
        e1?.idPurchase == e2?.idPurchase &&
        listEquality.equals(e1?.quantity, e2?.quantity) &&
        e1?.email == e2?.email &&
        e1?.customerName == e2?.customerName &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.ifCompleted == e2?.ifCompleted;
  }

  @override
  int hash(CompletedPurchasesRecord? e) => const ListEquality().hash([
        e?.products,
        e?.address,
        e?.uid,
        e?.subtotal,
        e?.idPurchase,
        e?.quantity,
        e?.email,
        e?.customerName,
        e?.customerPhone,
        e?.ifCompleted
      ]);

  @override
  bool isValidKey(Object? o) => o is CompletedPurchasesRecord;
}
