import '../database.dart';

class AppMessagesTable extends SupabaseTable<AppMessagesRow> {
  @override
  String get tableName => 'App_Messages';

  @override
  AppMessagesRow createRow(Map<String, dynamic> data) => AppMessagesRow(data);
}

class AppMessagesRow extends SupabaseDataRow {
  AppMessagesRow(super.data);

  @override
  SupabaseTable get table => AppMessagesTable();

  int get appMessagesId => getField<int>('AppMessages_id')!;
  set appMessagesId(int value) => setField<int>('AppMessages_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  bool? get messageRead => getField<bool>('Message_Read');
  set messageRead(bool? value) => setField<bool>('Message_Read', value);

  String? get userEmail => getField<String>('User_Email');
  set userEmail(String? value) => setField<String>('User_Email', value);

  String? get subject => getField<String>('Subject');
  set subject(String? value) => setField<String>('Subject', value);

  String? get message => getField<String>('Message');
  set message(String? value) => setField<String>('Message', value);
}
