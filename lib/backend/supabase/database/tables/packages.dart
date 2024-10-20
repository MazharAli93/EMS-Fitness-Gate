import '../database.dart';

class PackagesTable extends SupabaseTable<PackagesRow> {
  @override
  String get tableName => 'Packages';

  @override
  PackagesRow createRow(Map<String, dynamic> data) => PackagesRow(data);
}

class PackagesRow extends SupabaseDataRow {
  PackagesRow(super.data);

  @override
  SupabaseTable get table => PackagesTable();

  int get packageId => getField<int>('Package_id')!;
  set packageId(int value) => setField<int>('Package_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  int? get sessionsNumber => getField<int>('Sessions_Number');
  set sessionsNumber(int? value) => setField<int>('Sessions_Number', value);

  double? get price => getField<double>('Price');
  set price(double? value) => setField<double>('Price', value);

  DateTime? get targetMonth => getField<DateTime>('Target_Month');
  set targetMonth(DateTime? value) => setField<DateTime>('Target_Month', value);
}
