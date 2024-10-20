import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class INBodyRecord extends FirestoreRecord {
  INBodyRecord._(
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

  // "Weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _userRef = snapshotData['User_Ref'] as DocumentReference?;
    _weight = castToType<double>(snapshotData['Weight']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('INBody');

  static Stream<INBodyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => INBodyRecord.fromSnapshot(s));

  static Future<INBodyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => INBodyRecord.fromSnapshot(s));

  static INBodyRecord fromSnapshot(DocumentSnapshot snapshot) => INBodyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static INBodyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      INBodyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'INBodyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is INBodyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createINBodyRecordData({
  DateTime? createdDate,
  DocumentReference? userRef,
  double? weight,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'User_Ref': userRef,
      'Weight': weight,
    }.withoutNulls,
  );

  return firestoreData;
}

class INBodyRecordDocumentEquality implements Equality<INBodyRecord> {
  const INBodyRecordDocumentEquality();

  @override
  bool equals(INBodyRecord? e1, INBodyRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.userRef == e2?.userRef &&
        e1?.weight == e2?.weight;
  }

  @override
  int hash(INBodyRecord? e) =>
      const ListEquality().hash([e?.createdDate, e?.userRef, e?.weight]);

  @override
  bool isValidKey(Object? o) => o is INBodyRecord;
}
