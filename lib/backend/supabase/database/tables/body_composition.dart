import '../database.dart';

class BodyCompositionTable extends SupabaseTable<BodyCompositionRow> {
  @override
  String get tableName => 'Body_Composition';

  @override
  BodyCompositionRow createRow(Map<String, dynamic> data) =>
      BodyCompositionRow(data);
}

class BodyCompositionRow extends SupabaseDataRow {
  BodyCompositionRow(super.data);

  @override
  SupabaseTable get table => BodyCompositionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  int? get inbodyRef => getField<int>('Inbody_Ref');
  set inbodyRef(int? value) => setField<int>('Inbody_Ref', value);

  String? get indicatorName => getField<String>('Indicator_Name');
  set indicatorName(String? value) => setField<String>('Indicator_Name', value);

  double? get result => getField<double>('Result');
  set result(double? value) => setField<double>('Result', value);

  double? get idealLow => getField<double>('Ideal_Low');
  set idealLow(double? value) => setField<double>('Ideal_Low', value);

  int? get idealHigh => getField<int>('Ideal_High');
  set idealHigh(int? value) => setField<int>('Ideal_High', value);
}
