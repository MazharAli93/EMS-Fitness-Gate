import '../database.dart';

class FatMassAnalysisTable extends SupabaseTable<FatMassAnalysisRow> {
  @override
  String get tableName => 'Fat_Mass_Analysis';

  @override
  FatMassAnalysisRow createRow(Map<String, dynamic> data) =>
      FatMassAnalysisRow(data);
}

class FatMassAnalysisRow extends SupabaseDataRow {
  FatMassAnalysisRow(super.data);

  @override
  SupabaseTable get table => FatMassAnalysisTable();

  int get fMAId => getField<int>('FMA_id')!;
  set fMAId(int value) => setField<int>('FMA_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  int? get inbodyRef => getField<int>('Inbody_ref');
  set inbodyRef(int? value) => setField<int>('Inbody_ref', value);

  String? get focus => getField<String>('Focus');
  set focus(String? value) => setField<String>('Focus', value);

  double? get result => getField<double>('Result');
  set result(double? value) => setField<double>('Result', value);

  double? get idealLow => getField<double>('Ideal_Low');
  set idealLow(double? value) => setField<double>('Ideal_Low', value);

  double? get idealHigh => getField<double>('Ideal_High');
  set idealHigh(double? value) => setField<double>('Ideal_High', value);
}
