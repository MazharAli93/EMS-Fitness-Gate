import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'health_info_widget.dart' show HealthInfoWidget;
import 'package:flutter/material.dart';

class HealthInfoModel extends FlutterFlowModel<HealthInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for HeartRadioButton widget.
  FormFieldController<String>? heartRadioButtonValueController;
  // State field(s) for BloodRadioButton widget.
  FormFieldController<String>? bloodRadioButtonValueController;
  // State field(s) for DiabeticRadioButton widget.
  FormFieldController<String>? diabeticRadioButtonValueController;
  // State field(s) for SurgeriesRadioButton widget.
  FormFieldController<String>? surgeriesRadioButtonValueController;
  // State field(s) for InjuriesRadioButton widget.
  FormFieldController<String>? injuriesRadioButtonValueController;
  // State field(s) for AllergiesRadioButton widget.
  FormFieldController<String>? allergiesRadioButtonValueController;
  // Stores action output result for [Backend Call - Query Rows] action in CreateAccountButton widget.
  List<UsersRow>? userRefByID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get heartRadioButtonValue => heartRadioButtonValueController?.value;
  String? get bloodRadioButtonValue => bloodRadioButtonValueController?.value;
  String? get diabeticRadioButtonValue =>
      diabeticRadioButtonValueController?.value;
  String? get surgeriesRadioButtonValue =>
      surgeriesRadioButtonValueController?.value;
  String? get injuriesRadioButtonValue =>
      injuriesRadioButtonValueController?.value;
  String? get allergiesRadioButtonValue =>
      allergiesRadioButtonValueController?.value;
}
