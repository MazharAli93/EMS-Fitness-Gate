import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get userId => getField<int>('User_id')!;
  set userId(int value) => setField<int>('User_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('First_Name');
  set firstName(String? value) => setField<String>('First_Name', value);

  String? get middleName => getField<String>('Middle_Name');
  set middleName(String? value) => setField<String>('Middle_Name', value);

  String? get lastName => getField<String>('Last_Name');
  set lastName(String? value) => setField<String>('Last_Name', value);

  DateTime? get dateOfBirth => getField<DateTime>('Date_of_Birth');
  set dateOfBirth(DateTime? value) =>
      setField<DateTime>('Date_of_Birth', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get displayName => getField<String>('Display_Name');
  set displayName(String? value) => setField<String>('Display_Name', value);

  String? get phoneNumber => getField<String>('Phone_Number');
  set phoneNumber(String? value) => setField<String>('Phone_Number', value);

  String? get gender => getField<String>('Gender');
  set gender(String? value) => setField<String>('Gender', value);

  String? get bloodType => getField<String>('Blood_Type');
  set bloodType(String? value) => setField<String>('Blood_Type', value);

  String? get address => getField<String>('Address');
  set address(String? value) => setField<String>('Address', value);

  double? get height => getField<double>('Height');
  set height(double? value) => setField<double>('Height', value);

  String? get photoURL => getField<String>('Photo_URL');
  set photoURL(String? value) => setField<String>('Photo_URL', value);

  String? get emergencyContactName =>
      getField<String>('Emergency_Contact_Name');
  set emergencyContactName(String? value) =>
      setField<String>('Emergency_Contact_Name', value);

  String? get emergencyContactPhone =>
      getField<String>('Emergency_Contact_Phone');
  set emergencyContactPhone(String? value) =>
      setField<String>('Emergency_Contact_Phone', value);

  String? get userType => getField<String>('User_Type');
  set userType(String? value) => setField<String>('User_Type', value);

  String? get description => getField<String>('Description');
  set description(String? value) => setField<String>('Description', value);

  String? get maritialStatus => getField<String>('Maritial_Status');
  set maritialStatus(String? value) =>
      setField<String>('Maritial_Status', value);

  String? get userFirebaseID => getField<String>('UserFirebaseID');
  set userFirebaseID(String? value) =>
      setField<String>('UserFirebaseID', value);
}
