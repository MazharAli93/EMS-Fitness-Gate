import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HealthInformationRecord extends FirestoreRecord {
  HealthInformationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "HeartProblem" field.
  String? _heartProblem;
  String get heartProblem => _heartProblem ?? '';
  bool hasHeartProblem() => _heartProblem != null;

  // "BloodPressure" field.
  String? _bloodPressure;
  String get bloodPressure => _bloodPressure ?? '';
  bool hasBloodPressure() => _bloodPressure != null;

  // "Diabetes" field.
  String? _diabetes;
  String get diabetes => _diabetes ?? '';
  bool hasDiabetes() => _diabetes != null;

  // "Surgeries" field.
  String? _surgeries;
  String get surgeries => _surgeries ?? '';
  bool hasSurgeries() => _surgeries != null;

  // "Allergeis" field.
  String? _allergeis;
  String get allergeis => _allergeis ?? '';
  bool hasAllergeis() => _allergeis != null;

  // "Injuries" field.
  String? _injuries;
  String get injuries => _injuries ?? '';
  bool hasInjuries() => _injuries != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _heartProblem = snapshotData['HeartProblem'] as String?;
    _bloodPressure = snapshotData['BloodPressure'] as String?;
    _diabetes = snapshotData['Diabetes'] as String?;
    _surgeries = snapshotData['Surgeries'] as String?;
    _allergeis = snapshotData['Allergeis'] as String?;
    _injuries = snapshotData['Injuries'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('HealthInformation')
          : FirebaseFirestore.instance.collectionGroup('HealthInformation');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('HealthInformation').doc(id);

  static Stream<HealthInformationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HealthInformationRecord.fromSnapshot(s));

  static Future<HealthInformationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HealthInformationRecord.fromSnapshot(s));

  static HealthInformationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HealthInformationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HealthInformationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HealthInformationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HealthInformationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HealthInformationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHealthInformationRecordData({
  DateTime? createdDate,
  String? heartProblem,
  String? bloodPressure,
  String? diabetes,
  String? surgeries,
  String? allergeis,
  String? injuries,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'HeartProblem': heartProblem,
      'BloodPressure': bloodPressure,
      'Diabetes': diabetes,
      'Surgeries': surgeries,
      'Allergeis': allergeis,
      'Injuries': injuries,
    }.withoutNulls,
  );

  return firestoreData;
}

class HealthInformationRecordDocumentEquality
    implements Equality<HealthInformationRecord> {
  const HealthInformationRecordDocumentEquality();

  @override
  bool equals(HealthInformationRecord? e1, HealthInformationRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.heartProblem == e2?.heartProblem &&
        e1?.bloodPressure == e2?.bloodPressure &&
        e1?.diabetes == e2?.diabetes &&
        e1?.surgeries == e2?.surgeries &&
        e1?.allergeis == e2?.allergeis &&
        e1?.injuries == e2?.injuries;
  }

  @override
  int hash(HealthInformationRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.heartProblem,
        e?.bloodPressure,
        e?.diabetes,
        e?.surgeries,
        e?.allergeis,
        e?.injuries
      ]);

  @override
  bool isValidKey(Object? o) => o is HealthInformationRecord;
}
