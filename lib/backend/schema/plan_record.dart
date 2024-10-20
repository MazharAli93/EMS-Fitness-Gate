import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanRecord extends FirestoreRecord {
  PlanRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Sessions_Number" field.
  int? _sessionsNumber;
  int get sessionsNumber => _sessionsNumber ?? 0;
  bool hasSessionsNumber() => _sessionsNumber != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Target_Month" field.
  DateTime? _targetMonth;
  DateTime? get targetMonth => _targetMonth;
  bool hasTargetMonth() => _targetMonth != null;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _name = snapshotData['Name'] as String?;
    _sessionsNumber = castToType<int>(snapshotData['Sessions_Number']);
    _price = castToType<double>(snapshotData['Price']);
    _targetMonth = snapshotData['Target_Month'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Plan');

  static Stream<PlanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlanRecord.fromSnapshot(s));

  static Future<PlanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlanRecord.fromSnapshot(s));

  static PlanRecord fromSnapshot(DocumentSnapshot snapshot) => PlanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlanRecordData({
  DateTime? createdDate,
  String? name,
  int? sessionsNumber,
  double? price,
  DateTime? targetMonth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'Name': name,
      'Sessions_Number': sessionsNumber,
      'Price': price,
      'Target_Month': targetMonth,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlanRecordDocumentEquality implements Equality<PlanRecord> {
  const PlanRecordDocumentEquality();

  @override
  bool equals(PlanRecord? e1, PlanRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.name == e2?.name &&
        e1?.sessionsNumber == e2?.sessionsNumber &&
        e1?.price == e2?.price &&
        e1?.targetMonth == e2?.targetMonth;
  }

  @override
  int hash(PlanRecord? e) => const ListEquality().hash(
      [e?.createdDate, e?.name, e?.sessionsNumber, e?.price, e?.targetMonth]);

  @override
  bool isValidKey(Object? o) => o is PlanRecord;
}
