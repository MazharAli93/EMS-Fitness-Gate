import '../database.dart';

class InbodyTable extends SupabaseTable<InbodyRow> {
  @override
  String get tableName => 'Inbody';

  @override
  InbodyRow createRow(Map<String, dynamic> data) => InbodyRow(data);
}

class InbodyRow extends SupabaseDataRow {
  InbodyRow(super.data);

  @override
  SupabaseTable get table => InbodyTable();

  int get inbodyId => getField<int>('inbody_id')!;
  set inbodyId(int value) => setField<int>('inbody_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  double? get totalScore => getField<double>('Total_Score');
  set totalScore(double? value) => setField<double>('Total_Score', value);

  int? get bioAge => getField<int>('Bio_Age');
  set bioAge(int? value) => setField<int>('Bio_Age', value);

  double? get recommendedDailyCalorie =>
      getField<double>('Recommended_Daily_Calorie');
  set recommendedDailyCalorie(double? value) =>
      setField<double>('Recommended_Daily_Calorie', value);

  double? get uperLimbBalance => getField<double>('Uper_Limb_Balance');
  set uperLimbBalance(double? value) =>
      setField<double>('Uper_Limb_Balance', value);

  double? get bodyBalance => getField<double>('Body_Balance');
  set bodyBalance(double? value) => setField<double>('Body_Balance', value);

  double? get lowerLimbBalance => getField<double>('Lower_Limb_Balance');
  set lowerLimbBalance(double? value) =>
      setField<double>('Lower_Limb_Balance', value);

  String? get weightAdvice => getField<String>('Weight_Advice');
  set weightAdvice(String? value) => setField<String>('Weight_Advice', value);

  double? get weightLow => getField<double>('Weight_Low');
  set weightLow(double? value) => setField<double>('Weight_Low', value);

  double? get weightHigh => getField<double>('Weight_High');
  set weightHigh(double? value) => setField<double>('Weight_High', value);

  String? get muscleAdvice => getField<String>('Muscle_Advice');
  set muscleAdvice(String? value) => setField<String>('Muscle_Advice', value);

  double? get muscleLow => getField<double>('Muscle_Low');
  set muscleLow(double? value) => setField<double>('Muscle_Low', value);

  double? get muscleHigh => getField<double>('Muscle_High');
  set muscleHigh(double? value) => setField<double>('Muscle_High', value);

  String? get fatAdvice => getField<String>('Fat_Advice');
  set fatAdvice(String? value) => setField<String>('Fat_Advice', value);

  double? get fatLow => getField<double>('Fat_Low');
  set fatLow(double? value) => setField<double>('Fat_Low', value);

  double? get fatHigh => getField<double>('Fat_High');
  set fatHigh(double? value) => setField<double>('Fat_High', value);

  String? get waterAdvice => getField<String>('Water_Advice');
  set waterAdvice(String? value) => setField<String>('Water_Advice', value);

  double? get waterLow => getField<double>('Water_Low');
  set waterLow(double? value) => setField<double>('Water_Low', value);

  double? get waterHigh => getField<double>('Water_High');
  set waterHigh(double? value) => setField<double>('Water_High', value);

  String? get mineralAdvice => getField<String>('Mineral_Advice');
  set mineralAdvice(String? value) => setField<String>('Mineral_Advice', value);

  double? get mineralLow => getField<double>('Mineral_Low');
  set mineralLow(double? value) => setField<double>('Mineral_Low', value);

  double? get mineralHigh => getField<double>('Mineral_High');
  set mineralHigh(double? value) => setField<double>('Mineral_High', value);

  String? get weightControlAdvice => getField<String>('Weight_Control_Advice');
  set weightControlAdvice(String? value) =>
      setField<String>('Weight_Control_Advice', value);
}
