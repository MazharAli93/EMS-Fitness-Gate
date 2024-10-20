import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DietRecord extends FirestoreRecord {
  DietRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "User_Ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "Timing" field.
  String? _timing;
  String get timing => _timing ?? '';
  bool hasTiming() => _timing != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Option" field.
  String? _option;
  String get option => _option ?? '';
  bool hasOption() => _option != null;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _userRef = snapshotData['User_Ref'] as DocumentReference?;
    _timing = snapshotData['Timing'] as String?;
    _description = snapshotData['Description'] as String?;
    _option = snapshotData['Option'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Diet');

  static Stream<DietRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DietRecord.fromSnapshot(s));

  static Future<DietRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DietRecord.fromSnapshot(s));

  static DietRecord fromSnapshot(DocumentSnapshot snapshot) => DietRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DietRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DietRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DietRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DietRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDietRecordData({
  DateTime? createdDate,
  DocumentReference? userRef,
  String? timing,
  String? description,
  String? option,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'User_Ref': userRef,
      'Timing': timing,
      'Description': description,
      'Option': option,
    }.withoutNulls,
  );

  return firestoreData;
}

class DietRecordDocumentEquality implements Equality<DietRecord> {
  const DietRecordDocumentEquality();

  @override
  bool equals(DietRecord? e1, DietRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.userRef == e2?.userRef &&
        e1?.timing == e2?.timing &&
        e1?.description == e2?.description &&
        e1?.option == e2?.option;
  }

  @override
  int hash(DietRecord? e) => const ListEquality()
      .hash([e?.createdDate, e?.userRef, e?.timing, e?.description, e?.option]);

  @override
  bool isValidKey(Object? o) => o is DietRecord;
}
