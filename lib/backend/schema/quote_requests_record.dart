import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuoteRequestsRecord extends FirestoreRecord {
  QuoteRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "taxes" field.
  double? _taxes;
  double get taxes => _taxes ?? 0.0;
  bool hasTaxes() => _taxes != null;

  // "shippingFees" field.
  double? _shippingFees;
  double get shippingFees => _shippingFees ?? 0.0;
  bool hasShippingFees() => _shippingFees != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "productType" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "refUrl" field.
  String? _refUrl;
  String get refUrl => _refUrl ?? '';
  bool hasRefUrl() => _refUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "ifCompleted" field.
  bool? _ifCompleted;
  bool get ifCompleted => _ifCompleted ?? false;
  bool hasIfCompleted() => _ifCompleted != null;

  // "idQuote" field.
  int? _idQuote;
  int get idQuote => _idQuote ?? 0;
  bool hasIdQuote() => _idQuote != null;

  void _initializeFields() {
    _productName = snapshotData['productName'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _date = snapshotData['date'] as DateTime?;
    _taxes = castToType<double>(snapshotData['taxes']);
    _shippingFees = castToType<double>(snapshotData['shippingFees']);
    _total = castToType<double>(snapshotData['total']);
    _weight = castToType<int>(snapshotData['weight']);
    _productType = snapshotData['productType'] as String?;
    _refUrl = snapshotData['refUrl'] as String?;
    _uid = snapshotData['uid'] as String?;
    _ifCompleted = snapshotData['ifCompleted'] as bool?;
    _idQuote = castToType<int>(snapshotData['idQuote']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QuoteRequests');

  static Stream<QuoteRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuoteRequestsRecord.fromSnapshot(s));

  static Future<QuoteRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuoteRequestsRecord.fromSnapshot(s));

  static QuoteRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuoteRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuoteRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuoteRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuoteRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuoteRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuoteRequestsRecordData({
  String? productName,
  double? price,
  DateTime? date,
  double? taxes,
  double? shippingFees,
  double? total,
  int? weight,
  String? productType,
  String? refUrl,
  String? uid,
  bool? ifCompleted,
  int? idQuote,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productName': productName,
      'price': price,
      'date': date,
      'taxes': taxes,
      'shippingFees': shippingFees,
      'total': total,
      'weight': weight,
      'productType': productType,
      'refUrl': refUrl,
      'uid': uid,
      'ifCompleted': ifCompleted,
      'idQuote': idQuote,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuoteRequestsRecordDocumentEquality
    implements Equality<QuoteRequestsRecord> {
  const QuoteRequestsRecordDocumentEquality();

  @override
  bool equals(QuoteRequestsRecord? e1, QuoteRequestsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.price == e2?.price &&
        e1?.date == e2?.date &&
        e1?.taxes == e2?.taxes &&
        e1?.shippingFees == e2?.shippingFees &&
        e1?.total == e2?.total &&
        e1?.weight == e2?.weight &&
        e1?.productType == e2?.productType &&
        e1?.refUrl == e2?.refUrl &&
        e1?.uid == e2?.uid &&
        e1?.ifCompleted == e2?.ifCompleted &&
        e1?.idQuote == e2?.idQuote;
  }

  @override
  int hash(QuoteRequestsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.price,
        e?.date,
        e?.taxes,
        e?.shippingFees,
        e?.total,
        e?.weight,
        e?.productType,
        e?.refUrl,
        e?.uid,
        e?.ifCompleted,
        e?.idQuote
      ]);

  @override
  bool isValidKey(Object? o) => o is QuoteRequestsRecord;
}
