import '../database.dart';

class UserSessionsTable extends SupabaseTable<UserSessionsRow> {
  @override
  String get tableName => 'User_Sessions';

  @override
  UserSessionsRow createRow(Map<String, dynamic> data) => UserSessionsRow(data);
}

class UserSessionsRow extends SupabaseDataRow {
  UserSessionsRow(super.data);

  @override
  SupabaseTable get table => UserSessionsTable();

  int get userSessionsId => getField<int>('UserSessions_id')!;
  set userSessionsId(int value) => setField<int>('UserSessions_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  int? get packageRef => getField<int>('Package_Ref');
  set packageRef(int? value) => setField<int>('Package_Ref', value);

  String? get subscribedPlan => getField<String>('Subscribed_Plan');
  set subscribedPlan(String? value) =>
      setField<String>('Subscribed_Plan', value);

  DateTime? get subscribedDate => getField<DateTime>('Subscribed_Date');
  set subscribedDate(DateTime? value) =>
      setField<DateTime>('Subscribed_Date', value);

  int? get totalSessions => getField<int>('Total_Sessions');
  set totalSessions(int? value) => setField<int>('Total_Sessions', value);

  int? get sessionsLeft => getField<int>('Sessions_Left');
  set sessionsLeft(int? value) => setField<int>('Sessions_Left', value);

  DateTime? get nextSession => getField<DateTime>('Next_Session');
  set nextSession(DateTime? value) => setField<DateTime>('Next_Session', value);
}
