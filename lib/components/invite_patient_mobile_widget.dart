import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invite_patient_mobile_model.dart';
export 'invite_patient_mobile_model.dart';

class InvitePatientMobileWidget extends StatefulWidget {
  const InvitePatientMobileWidget({super.key});

  @override
  _InvitePatientMobileWidgetState createState() =>
      _InvitePatientMobileWidgetState();
}

class _InvitePatientMobileWidgetState extends State<InvitePatientMobileWidget> {
  late InvitePatientMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvitePatientMobileModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Invite a Client to Your Practice',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: const Color(0xFF646464),
                              fontSize: 30.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'We\'ll send a unique access code to your patient\'s email below',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: const Color(0xFF969696),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'name@email.com',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF646464),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF646464),
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'INVITE_PATIENT_MOBILE_CONTINUE_BTN_ON_TA');
                          logFirebaseEvent('Button_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          logFirebaseEvent('Button_update_app_state');
                          setState(() {
                            FFAppState().accesstempcode =
                                random_data.randomString(
                              10,
                              10,
                              true,
                              false,
                              true,
                            );
                          });
                          logFirebaseEvent('Button_backend_call');

                          var usercodesRecordReference =
                              UsercodesRecord.collection.doc();
                          await usercodesRecordReference
                              .set(createUsercodesRecordData(
                            email: _model.textController.text,
                            accesscode: FFAppState().accesstempcode,
                            therapist: currentUserReference,
                            date: getCurrentTimestamp,
                          ));
                          _model.aPIRef = UsercodesRecord.getDocumentFromData(
                              createUsercodesRecordData(
                                email: _model.textController.text,
                                accesscode: FFAppState().accesstempcode,
                                therapist: currentUserReference,
                                date: getCurrentTimestamp,
                              ),
                              usercodesRecordReference);
                          logFirebaseEvent('Button_backend_call');
                          await SecurityEmailsCall.call(
                            subject: 'Your Cognitiv.ly Passcode',
                            emailBody:
                                'Your Passcode is ${FFAppState().accesstempcode}. Keep this code safe and do not share it with anyone.',
                            recipient: _model.textController.text,
                          );
                          logFirebaseEvent('Button_page_view');
                          await _model.pageViewController?.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );

                          setState(() {});
                        },
                        text: 'Continue',
                        icon: const Icon(
                          Icons.arrow_right_alt,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 60.0,
                          padding: const EdgeInsets.all(0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF2B2B2B),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Manrope',
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
                StreamBuilder<List<UsercodesRecord>>(
                  stream: queryUsercodesRecord(
                    queryBuilder: (usercodesRecord) => usercodesRecord
                        .where(
                          'therapist',
                          isEqualTo: currentUserReference,
                        )
                        .orderBy('date', descending: true),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitRipple(
                            color: Color(0xFFB9DFFF),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<UsercodesRecord> listViewUsercodesRecordList =
                        snapshot.data!;
                    final listViewUsercodesRecord =
                        listViewUsercodesRecordList.isNotEmpty
                            ? listViewUsercodesRecordList.first
                            : null;
                    return ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Access Code Sent',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF646464),
                                  fontSize: 30.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Your patient will appear in your patient list once they\'ve confirmed the invitation',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF969696),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: SelectionArea(
                                    child: Text(
                                  valueOrDefault<String>(
                                    listViewUsercodesRecord?.accesscode,
                                    'no access code found',
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF646464),
                                        fontSize: 20.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                        lineHeight: 1.5,
                                      ),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'INVITE_PATIENT_MOBILE_Icon_7gp1c692_ON_T');
                                    logFirebaseEvent('Icon_copy_to_clipboard');
                                    await Clipboard.setData(ClipboardData(
                                        text: listViewUsercodesRecord!
                                            .accesscode));
                                    logFirebaseEvent('Icon_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Access Code Copied',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.copy_all_sharp,
                                    color: Color(0xFF919191),
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'INVITE_PATIENT_MOBILE_DONE_BTN_ON_TAP');
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            },
                            text: 'Done',
                            icon: const Icon(
                              Icons.check_sharp,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 50.0,
                              padding: const EdgeInsets.all(0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF2B2B2B),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
