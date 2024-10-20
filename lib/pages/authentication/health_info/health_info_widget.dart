import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'health_info_model.dart';
export 'health_info_model.dart';

class HealthInfoWidget extends StatefulWidget {
  /// Health Information
  const HealthInfoWidget({super.key});

  @override
  State<HealthInfoWidget> createState() => _HealthInfoWidgetState();
}

class _HealthInfoWidgetState extends State<HealthInfoWidget> {
  late HealthInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthInfoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).main,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/EMS_Fitness_Gate_Logo.png',
                          width: 200.0,
                          height: 150.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 50.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Please let us know if you are \nexperiencing any of the following',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Any Heart Problems \nor Previous Hear Attacks',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.heartRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Irregular blood\n pressure',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.bloodRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Symptoms of all \ntypes of diabetes',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.diabeticRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Surgeries that did \nnot exceed six months',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.surgeriesRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Previous injuries \nof any kind',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.injuriesRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Allergy to a certain food',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FlutterFlowRadioButton(
                              options: ['No', 'Yes'].toList(),
                              onChanged: (val) => safeSetState(() {}),
                              controller:
                                  _model.allergiesRadioButtonValueController ??=
                                      FormFieldController<String>(null),
                              optionHeight: 32.0,
                              optionWidth: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).textColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 30.0, 0.0, 50.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            // Alert
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Confirmation'),
                                      content: const Text(
                                          'If the customer conceals any health data or information, he alone will bear all responsibility for any damages resulting from his concealment of complete information, do you concent ?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirm'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            // ValidateForm
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.heartRadioButtonValue == null) {
                              return;
                            }
                            if (_model.bloodRadioButtonValue == null) {
                              return;
                            }
                            if (_model.diabeticRadioButtonValue == null) {
                              return;
                            }
                            if (_model.surgeriesRadioButtonValue == null) {
                              return;
                            }
                            if (_model.injuriesRadioButtonValue == null) {
                              return;
                            }
                            if (_model.allergiesRadioButtonValue == null) {
                              return;
                            }
                            // CreateUser
                            GoRouter.of(context).prepareAuthEvent();
                            if (FFAppState().Password !=
                                FFAppState().Password) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user =
                                await authManager.createAccountWithEmail(
                              context,
                              FFAppState().Email,
                              FFAppState().Password,
                            );
                            if (user == null) {
                              return;
                            }

                            await UsersRecord.collection.doc(user.uid).update({
                              ...createUsersRecordData(
                                email: FFAppState().Email,
                                displayName:
                                    '${FFAppState().FName} ${FFAppState().LastName}',
                                phoneNumber: FFAppState().Mobile,
                                firstName: FFAppState().FName,
                                middleName: FFAppState().MiddleName,
                                lastName: FFAppState().LastName,
                                dateofBirth: FFAppState().DateofBirth,
                                gender: FFAppState().Gender,
                                bloodType: FFAppState().Bloodtype,
                                address: FFAppState().Address,
                                height: FFAppState().Height,
                                emergencyContactName:
                                    FFAppState().EmergencyName,
                                emergencyContactPhone:
                                    FFAppState().EmergencyNumber,
                                maritialStatus: FFAppState().MaritialStatus,
                                userType: 'User',
                              ),
                              ...mapToFirestore(
                                {
                                  'created_time': FieldValue.serverTimestamp(),
                                },
                              ),
                            });

                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Firebase Auth'),
                                  content: const Text('Done'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            // HealthInfoDocument

                            await HealthInformationRecord.createDoc(
                                    currentUserReference!)
                                .set({
                              ...createHealthInformationRecordData(
                                heartProblem: _model.heartRadioButtonValue,
                                bloodPressure: _model.bloodRadioButtonValue,
                                diabetes: _model.diabeticRadioButtonValue,
                                surgeries: _model.surgeriesRadioButtonValue,
                                allergeis: _model.allergiesRadioButtonValue,
                                injuries: _model.injuriesRadioButtonValue,
                              ),
                              ...mapToFirestore(
                                {
                                  'Created_Date': FieldValue.serverTimestamp(),
                                },
                              ),
                            });
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Firebase Health'),
                                  content: const Text('Done'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            // Supabase_User_Create
                            await UsersTable().insert({
                              'First_Name': FFAppState().FName,
                              'Middle_Name': FFAppState().MiddleName,
                              'Last_Name': FFAppState().LastName,
                              'Date_of_Birth': supaSerialize<DateTime>(
                                  FFAppState().DateofBirth),
                              'Email': FFAppState().Email,
                              'Display_Name': currentUserDisplayName,
                              'Phone_Number': FFAppState().Mobile,
                              'Gender': FFAppState().Gender,
                              'Blood_Type': FFAppState().Bloodtype,
                              'Address': FFAppState().Address,
                              'Height': FFAppState().Height,
                              'Photo_URL': 'N/A',
                              'Emergency_Contact_Name':
                                  FFAppState().EmergencyName,
                              'Emergency_Contact_Phone':
                                  FFAppState().EmergencyNumber,
                              'User_Type': 'User',
                              'Description': 'N/A',
                              'Maritial_Status': FFAppState().MaritialStatus,
                              'UserFirebaseID': currentUserReference?.id,
                            });
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Supabase User'),
                                  content: const Text('Done'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            // QueryUserID
                            _model.userRefByID = await UsersTable().queryRows(
                              queryFn: (q) => q.eq(
                                'UserFirebaseID',
                                currentUserReference?.id,
                              ),
                            );
                            await HealthInformationTable().insert({
                              'User_Ref': _model.userRefByID?.first.userId,
                              'Heart': _model.heartRadioButtonValue,
                              'Blood_Pressure': _model.bloodRadioButtonValue,
                              'Diabetes': _model.diabeticRadioButtonValue,
                              'Surgeries': _model.surgeriesRadioButtonValue,
                              'Allergies': _model.allergiesRadioButtonValue,
                              'Injuries': _model.injuriesRadioButtonValue,
                            });
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Supabase Health'),
                                  content: const Text('Done'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

                            context.goNamedAuth('Home', context.mounted);

                            safeSetState(() {});
                          },
                          text: 'Create Account',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).main,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).textColor,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).textColor,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
