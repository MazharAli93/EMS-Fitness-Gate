import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionsRecord extends FirestoreRecord {
  SessionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Subscribed_Plan" field.
  DocumentReference? _subscribedPlan;
  DocumentReference? get subscribedPlan => _subscribedPlan;
  bool hasSubscribedPlan() => _subscribedPlan != null;

  // "Subscribed_Date" field.
  DateTime? _subscribedDate;
  DateTime? get subscribedDate => _subscribedDate;
  bool hasSubscribedDate() => _subscribedDate != null;

  // "Sessions_Left" field.
  int? _sessionsLeft;
  int get sessionsLeft => _sessionsLeft ?? 0;
  bool hasSessionsLeft() => _sessionsLeft != null;

  // "Next_Session" field.
  DateTime? _nextSession;
  DateTime? get nextSession => _nextSession;
  bool hasNextSession() => _nextSession != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _subscribedPlan = snapshotData['Subscribed_Plan'] as DocumentReference?;
    _subscribedDate = snapshotData['Subscribed_Date'] as DateTime?;
    _sessionsLeft = castToType<int>(snapshotData['Sessions_Left']);
    _nextSession = snapshotData['Next_Session'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Sessions')
          : FirebaseFirestore.instance.collectionGroup('Sessions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Sessions').doc(id);

  static Stream<SessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionsRecord.fromSnapshot(s));

  static Future<SessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionsRecord.fromSnapshot(s));

  static SessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionsRecordData({
  DocumentReference? subscribedPlan,
  DateTime? subscribedDate,
  int? sessionsLeft,
  DateTime? nextSession,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Subscribed_Plan': subscribedPlan,
      'Subscribed_Date': subscribedDate,
      'Sessions_Left': sessionsLeft,
      'Next_Session': nextSession,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionsRecordDocumentEquality implements Equality<SessionsRecord> {
  const SessionsRecordDocumentEquality();

  @override
  bool equals(SessionsRecord? e1, SessionsRecord? e2) {
    return e1?.subscribedPlan == e2?.subscribedPlan &&
        e1?.subscribedDate == e2?.subscribedDate &&
        e1?.sessionsLeft == e2?.sessionsLeft &&
        e1?.nextSession == e2?.nextSession;
  }

  @override
  int hash(SessionsRecord? e) => const ListEquality().hash(
      [e?.subscribedPlan, e?.subscribedDate, e?.sessionsLeft, e?.nextSession]);

  @override
  bool isValidKey(Object? o) => o is SessionsRecord;
}
