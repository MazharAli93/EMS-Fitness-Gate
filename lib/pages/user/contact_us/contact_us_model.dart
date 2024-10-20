import '/components/navigate_back/navigate_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_us_widget.dart' show ContactUsWidget;
import 'package:flutter/material.dart';

class ContactUsModel extends FlutterFlowModel<ContactUsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigateBack component.
  late NavigateBackModel navigateBackModel;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    navigateBackModel = createModel(context, () => NavigateBackModel());
  }

  @override
  void dispose() {
    navigateBackModel.dispose();
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
