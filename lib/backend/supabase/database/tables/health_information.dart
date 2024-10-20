import '../database.dart';

class HealthInformationTable extends SupabaseTable<HealthInformationRow> {
  @override
  String get tableName => 'Health_Information';

  @override
  HealthInformationRow createRow(Map<String, dynamic> data) =>
      HealthInformationRow(data);
}

class HealthInformationRow extends SupabaseDataRow {
  HealthInformationRow(super.data);

  @override
  SupabaseTable get table => HealthInformationTable();

  int get healthId => getField<int>('Health_id')!;
  set healthId(int value) => setField<int>('Health_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get heart => getField<String>('Heart');
  set heart(String? value) => setField<String>('Heart', value);

  String? get bloodPressure => getField<String>('Blood_Pressure');
  set bloodPressure(String? value) => setField<String>('Blood_Pressure', value);

  String? get diabetes => getField<String>('Diabetes');
  set diabetes(String? value) => setField<String>('Diabetes', value);

  String? get surgeries => getField<String>('Surgeries');
  set surgeries(String? value) => setField<String>('Surgeries', value);

  String? get allergies => getField<String>('Allergies');
  set allergies(String? value) => setField<String>('Allergies', value);

  String? get injuries => getField<String>('Injuries');
  set injuries(String? value) => setField<String>('Injuries', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);
}
