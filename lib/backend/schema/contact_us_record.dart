import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactUsRecord extends FirestoreRecord {
  ContactUsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "Sent_By" field.
  String? _sentBy;
  String get sentBy => _sentBy ?? '';
  bool hasSentBy() => _sentBy != null;

  // "User_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "Read" field.
  bool? _read;
  bool get read => _read ?? false;
  bool hasRead() => _read != null;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _sentBy = snapshotData['Sent_By'] as String?;
    _userRef = snapshotData['User_ref'] as DocumentReference?;
    _title = snapshotData['Title'] as String?;
    _message = snapshotData['Message'] as String?;
    _read = snapshotData['Read'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContactUs');

  static Stream<ContactUsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactUsRecord.fromSnapshot(s));

  static Future<ContactUsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactUsRecord.fromSnapshot(s));

  static ContactUsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactUsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactUsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactUsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactUsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactUsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactUsRecordData({
  DateTime? createdDate,
  String? sentBy,
  DocumentReference? userRef,
  String? title,
  String? message,
  bool? read,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'Sent_By': sentBy,
      'User_ref': userRef,
      'Title': title,
      'Message': message,
      'Read': read,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactUsRecordDocumentEquality implements Equality<ContactUsRecord> {
  const ContactUsRecordDocumentEquality();

  @override
  bool equals(ContactUsRecord? e1, ContactUsRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.sentBy == e2?.sentBy &&
        e1?.userRef == e2?.userRef &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.read == e2?.read;
  }

  @override
  int hash(ContactUsRecord? e) => const ListEquality().hash(
      [e?.createdDate, e?.sentBy, e?.userRef, e?.title, e?.message, e?.read]);

  @override
  bool isValidKey(Object? o) => o is ContactUsRecord;
}
