import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "MiddleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "DateofBirth" field.
  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _dateofBirth;
  bool hasDateofBirth() => _dateofBirth != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "Blood_Type" field.
  String? _bloodType;
  String get bloodType => _bloodType ?? '';
  bool hasBloodType() => _bloodType != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "Emergency_Contact_Name" field.
  String? _emergencyContactName;
  String get emergencyContactName => _emergencyContactName ?? '';
  bool hasEmergencyContactName() => _emergencyContactName != null;

  // "Emergency_Contact_Phone" field.
  String? _emergencyContactPhone;
  String get emergencyContactPhone => _emergencyContactPhone ?? '';
  bool hasEmergencyContactPhone() => _emergencyContactPhone != null;

  // "MaritialStatus" field.
  String? _maritialStatus;
  String get maritialStatus => _maritialStatus ?? '';
  bool hasMaritialStatus() => _maritialStatus != null;

  // "Descriptian" field.
  String? _descriptian;
  String get descriptian => _descriptian ?? '';
  bool hasDescriptian() => _descriptian != null;

  // "User_Type" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "AssignedTrainer" field.
  String? _assignedTrainer;
  String get assignedTrainer => _assignedTrainer ?? '';
  bool hasAssignedTrainer() => _assignedTrainer != null;

  // "RemainingSessions" field.
  String? _remainingSessions;
  String get remainingSessions => _remainingSessions ?? '';
  bool hasRemainingSessions() => _remainingSessions != null;

  // "NextSession" field.
  DateTime? _nextSession;
  DateTime? get nextSession => _nextSession;
  bool hasNextSession() => _nextSession != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['FirstName'] as String?;
    _middleName = snapshotData['MiddleName'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _dateofBirth = snapshotData['DateofBirth'] as DateTime?;
    _gender = snapshotData['Gender'] as String?;
    _bloodType = snapshotData['Blood_Type'] as String?;
    _address = snapshotData['Address'] as String?;
    _height = castToType<double>(snapshotData['Height']);
    _emergencyContactName = snapshotData['Emergency_Contact_Name'] as String?;
    _emergencyContactPhone = snapshotData['Emergency_Contact_Phone'] as String?;
    _maritialStatus = snapshotData['MaritialStatus'] as String?;
    _descriptian = snapshotData['Descriptian'] as String?;
    _userType = snapshotData['User_Type'] as String?;
    _assignedTrainer = snapshotData['AssignedTrainer'] as String?;
    _remainingSessions = snapshotData['RemainingSessions'] as String?;
    _nextSession = snapshotData['NextSession'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? middleName,
  String? lastName,
  DateTime? dateofBirth,
  String? gender,
  String? bloodType,
  String? address,
  double? height,
  String? emergencyContactName,
  String? emergencyContactPhone,
  String? maritialStatus,
  String? descriptian,
  String? userType,
  String? assignedTrainer,
  String? remainingSessions,
  DateTime? nextSession,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'FirstName': firstName,
      'MiddleName': middleName,
      'LastName': lastName,
      'DateofBirth': dateofBirth,
      'Gender': gender,
      'Blood_Type': bloodType,
      'Address': address,
      'Height': height,
      'Emergency_Contact_Name': emergencyContactName,
      'Emergency_Contact_Phone': emergencyContactPhone,
      'MaritialStatus': maritialStatus,
      'Descriptian': descriptian,
      'User_Type': userType,
      'AssignedTrainer': assignedTrainer,
      'RemainingSessions': remainingSessions,
      'NextSession': nextSession,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.gender == e2?.gender &&
        e1?.bloodType == e2?.bloodType &&
        e1?.address == e2?.address &&
        e1?.height == e2?.height &&
        e1?.emergencyContactName == e2?.emergencyContactName &&
        e1?.emergencyContactPhone == e2?.emergencyContactPhone &&
        e1?.maritialStatus == e2?.maritialStatus &&
        e1?.descriptian == e2?.descriptian &&
        e1?.userType == e2?.userType &&
        e1?.assignedTrainer == e2?.assignedTrainer &&
        e1?.remainingSessions == e2?.remainingSessions &&
        e1?.nextSession == e2?.nextSession;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.dateofBirth,
        e?.gender,
        e?.bloodType,
        e?.address,
        e?.height,
        e?.emergencyContactName,
        e?.emergencyContactPhone,
        e?.maritialStatus,
        e?.descriptian,
        e?.userType,
        e?.assignedTrainer,
        e?.remainingSessions,
        e?.nextSession
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
