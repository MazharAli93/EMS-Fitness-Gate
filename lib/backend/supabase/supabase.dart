import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://wispstssguocbpvxmqde.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indpc3BzdHNzZ3VvY2JwdnhtcWRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjYwNjEwODcsImV4cCI6MjA0MTYzNzA4N30.4Qcu4WDUsu-M8_mwRPB8UAUZw5DVZ38J9mpSk-DCfwo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
