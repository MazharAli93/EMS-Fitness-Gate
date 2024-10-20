import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _FName = '';
  String get FName => _FName;
  set FName(String value) {
    _FName = value;
  }

  String _MiddleName = '';
  String get MiddleName => _MiddleName;
  set MiddleName(String value) {
    _MiddleName = value;
  }

  String _LastName = '';
  String get LastName => _LastName;
  set LastName(String value) {
    _LastName = value;
  }

  DateTime? _DateofBirth = DateTime.fromMillisecondsSinceEpoch(1726135320000);
  DateTime? get DateofBirth => _DateofBirth;
  set DateofBirth(DateTime? value) {
    _DateofBirth = value;
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
  }

  String _Mobile = '';
  String get Mobile => _Mobile;
  set Mobile(String value) {
    _Mobile = value;
  }

  String _Gender = '';
  String get Gender => _Gender;
  set Gender(String value) {
    _Gender = value;
  }

  String _Bloodtype = '';
  String get Bloodtype => _Bloodtype;
  set Bloodtype(String value) {
    _Bloodtype = value;
  }

  String _Password = '';
  String get Password => _Password;
  set Password(String value) {
    _Password = value;
  }

  String _MaritialStatus = '';
  String get MaritialStatus => _MaritialStatus;
  set MaritialStatus(String value) {
    _MaritialStatus = value;
  }

  String _EmergencyName = '';
  String get EmergencyName => _EmergencyName;
  set EmergencyName(String value) {
    _EmergencyName = value;
  }

  String _EmergencyNumber = '';
  String get EmergencyNumber => _EmergencyNumber;
  set EmergencyNumber(String value) {
    _EmergencyNumber = value;
  }

  String _Address = '';
  String get Address => _Address;
  set Address(String value) {
    _Address = value;
  }

  double _Height = 0.0;
  double get Height => _Height;
  set Height(double value) {
    _Height = value;
  }
}
