import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "ifAvailable" field.
  bool? _ifAvailable;
  bool get ifAvailable => _ifAvailable ?? false;
  bool hasIfAvailable() => _ifAvailable != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  void _initializeFields() {
    _productName = snapshotData['productName'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _ifAvailable = snapshotData['ifAvailable'] as bool?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _productDescription = snapshotData['productDescription'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? productName,
  int? quantity,
  bool? ifAvailable,
  double? price,
  String? image,
  String? productDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productName': productName,
      'quantity': quantity,
      'ifAvailable': ifAvailable,
      'price': price,
      'image': image,
      'productDescription': productDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.quantity == e2?.quantity &&
        e1?.ifAvailable == e2?.ifAvailable &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.productDescription == e2?.productDescription;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.quantity,
        e?.ifAvailable,
        e?.price,
        e?.image,
        e?.productDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
