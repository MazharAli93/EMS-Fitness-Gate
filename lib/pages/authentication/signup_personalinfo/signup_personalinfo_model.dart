import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_personalinfo_widget.dart' show SignupPersonalinfoWidget;
import 'package:flutter/material.dart';

class SignupPersonalinfoModel
    extends FlutterFlowModel<SignupPersonalinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  DateTime? datePicked;
  // State field(s) for BloodTypeDropDown widget.
  String? bloodTypeDropDownValue;
  FormFieldController<String>? bloodTypeDropDownValueController;
  // State field(s) for SocialStatusDropDown widget.
  String? socialStatusDropDownValue;
  FormFieldController<String>? socialStatusDropDownValueController;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  String? _addressTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Height widget.
  FocusNode? heightFocusNode;
  TextEditingController? heightTextController;
  String? Function(BuildContext, String?)? heightTextControllerValidator;
  String? _heightTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmergencyName widget.
  FocusNode? emergencyNameFocusNode;
  TextEditingController? emergencyNameTextController;
  String? Function(BuildContext, String?)? emergencyNameTextControllerValidator;
  String? _emergencyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmergencyPhone widget.
  FocusNode? emergencyPhoneFocusNode;
  TextEditingController? emergencyPhoneTextController;
  String? Function(BuildContext, String?)?
      emergencyPhoneTextControllerValidator;
  String? _emergencyPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    addressTextControllerValidator = _addressTextControllerValidator;
    heightTextControllerValidator = _heightTextControllerValidator;
    emergencyNameTextControllerValidator =
        _emergencyNameTextControllerValidator;
    emergencyPhoneTextControllerValidator =
        _emergencyPhoneTextControllerValidator;
  }

  @override
  void dispose() {
    addressFocusNode?.dispose();
    addressTextController?.dispose();

    heightFocusNode?.dispose();
    heightTextController?.dispose();

    emergencyNameFocusNode?.dispose();
    emergencyNameTextController?.dispose();

    emergencyPhoneFocusNode?.dispose();
    emergencyPhoneTextController?.dispose();
  }
}
