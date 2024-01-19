import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/compressed_menu_widget.dart';
import '/components/gad7details_widget.dart';
import '/components/invite_patient_widget.dart';
import '/components/phq9details_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'patient_dashboard_profile_model.dart';
export 'patient_dashboard_profile_model.dart';

class PatientDashboardProfileWidget extends StatefulWidget {
  const PatientDashboardProfileWidget({
    super.key,
    required this.patientdoc,
  });

  final PatientDocumentsRecord? patientdoc;

  @override
  _PatientDashboardProfileWidgetState createState() =>
      _PatientDashboardProfileWidgetState();
}

class _PatientDashboardProfileWidgetState
    extends State<PatientDashboardProfileWidget> {
  late PatientDashboardProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientDashboardProfileModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientDashboardProfile'});

    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 0.0,
          child: wrapWithModel(
            model: _model.sideMenuModel,
            updateCallback: () => setState(() {}),
            child: const SideMenuWidget(),
          ),
        ),
        endDrawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Drawer(
            elevation: 16.0,
            child: StreamBuilder<PatientDocumentsRecord>(
              stream: PatientDocumentsRecord.getDocument(
                  widget.patientdoc!.reference),
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
                final containerPatientDocumentsRecord = snapshot.data!;
                return Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Generated Treatment Plan',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xFF646464),
                                fontSize: 24.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'This treatment plan was generated by integrating cummulative progress note insights. These recommendations in no way replace human expertise and can be edited below',
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
                                  lineHeight: 1.8,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController ??=
                                TextEditingController(
                              text:
                                  containerPatientDocumentsRecord.treatmentPlan,
                            ),
                            focusNode: _model.textFieldFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFE5E7ED),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFBDC8DF),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF404040),
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                  lineHeight: 1.5,
                                ),
                            maxLines: 20,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'PATIENT_DASHBOARD_PROFILE_SAVE_TREATMENT');
                              logFirebaseEvent('Button_backend_call');

                              await widget.patientdoc!.reference
                                  .update(createPatientDocumentsRecordData(
                                treatmentPlan: _model.textController.text,
                              ));
                              logFirebaseEvent(
                                  'Button_close_dialog,_drawer,_etc');
                              Navigator.pop(context);
                            },
                            text: 'Save Treatment Plan',
                            icon: const Icon(
                              Icons.check_sharp,
                              size: 16.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: const Color(0xFF646464),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Color(0xFFD0D1D9),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        body: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.sidemenuWebModel,
                    updateCallback: () => setState(() {}),
                    child: const SidemenuWebWidget(),
                  ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color(0xFFF2F6FE),
                            Color(0xFFFFF5F5),
                            Color(0xFFDAE2FF)
                          ],
                          stops: [0.0, 0.3, 0.5, 1.0],
                          begin: AlignmentDirectional(-0.98, -1.0),
                          end: AlignmentDirectional(0.98, 1.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 50.0, 40.0, 40.0),
                        child: StreamBuilder<PatientDocumentsRecord>(
                          stream: PatientDocumentsRecord.getDocument(
                              widget.patientdoc!.reference),
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
                            final listViewPatientDocumentsRecord =
                                snapshot.data!;
                            return ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_DASHBOARD_PROFILE_Image_ljwzrfak');
                                            logFirebaseEvent(
                                                'Image_navigate_back');
                                            context.safePop();
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Left-Arrow-Narrow.svg',
                                              width: 40.0,
                                              height: 40.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${widget.patientdoc?.name}\'s Profile',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF6C6C6C),
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/calendar-icon.svg',
                                                        width: 22.0,
                                                        height: 22.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Patient since ${dateTimeFormat('yMd', widget.patientdoc?.createdTime)}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Colors.white,
                                                    Color(0xFFEDF5FF),
                                                    Color(0xFFEEF1FF),
                                                    Colors.white
                                                  ],
                                                  stops: [0.0, 0.3, 0.6, 1.0],
                                                  begin: AlignmentDirectional(
                                                      -0.64, 1.0),
                                                  end: AlignmentDirectional(
                                                      0.64, -1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: const Color(0x00FFFFFF),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Assessment Agent',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF8B91AC),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: GradientText(
                                                        'Assign Automated Assessments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF4B505C),
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        colors: const [
                                                          Color(0xFF5A5F76),
                                                          Color(0xFFA1ABC0)
                                                        ],
                                                        gradientDirection:
                                                            GradientDirection
                                                                .ltr,
                                                        gradientType:
                                                            GradientType.linear,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Assign GAD-7 and PHQ-9 assessment questionnaires to this patient\'s account',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF828598),
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'PATIENT_DASHBOARD_PROFILE_ASSIGN_P_H_Q9_');
                                                          if (widget.patientdoc
                                                                  ?.patient !=
                                                              null) {
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            var gad7RecordReference =
                                                                Gad7Record
                                                                    .collection
                                                                    .doc();
                                                            await gad7RecordReference
                                                                .set(
                                                                    createGad7RecordData(
                                                              date:
                                                                  getCurrentTimestamp,
                                                              patientdoc: widget
                                                                  .patientdoc
                                                                  ?.reference,
                                                              therapist:
                                                                  currentUserReference,
                                                              day: listViewPatientDocumentsRecord
                                                                      .gad7assessments
                                                                      .length +
                                                                  1,
                                                              total: 0.0,
                                                              interpretation:
                                                                  'GAD-7 Not Completed',
                                                            ));
                                                            _model.gad7created =
                                                                Gad7Record.getDocumentFromData(
                                                                    createGad7RecordData(
                                                                      date:
                                                                          getCurrentTimestamp,
                                                                      patientdoc: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                      therapist:
                                                                          currentUserReference,
                                                                      day: listViewPatientDocumentsRecord
                                                                              .gad7assessments
                                                                              .length +
                                                                          1,
                                                                      total:
                                                                          0.0,
                                                                      interpretation:
                                                                          'GAD-7 Not Completed',
                                                                    ),
                                                                    gad7RecordReference);
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            var phq9RecordReference =
                                                                Phq9Record
                                                                    .collection
                                                                    .doc();
                                                            await phq9RecordReference
                                                                .set(
                                                                    createPhq9RecordData(
                                                              date:
                                                                  getCurrentTimestamp,
                                                              patientdoc: widget
                                                                  .patientdoc
                                                                  ?.reference,
                                                              therapist:
                                                                  currentUserReference,
                                                              day: listViewPatientDocumentsRecord
                                                                      .phq9assessments
                                                                      .length +
                                                                  1,
                                                              total: 0.0,
                                                              interpretation:
                                                                  'PHQ-9 Not Completed',
                                                            ));
                                                            _model.phq9created =
                                                                Phq9Record.getDocumentFromData(
                                                                    createPhq9RecordData(
                                                                      date:
                                                                          getCurrentTimestamp,
                                                                      patientdoc: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                      therapist:
                                                                          currentUserReference,
                                                                      day: listViewPatientDocumentsRecord
                                                                              .phq9assessments
                                                                              .length +
                                                                          1,
                                                                      total:
                                                                          0.0,
                                                                      interpretation:
                                                                          'PHQ-9 Not Completed',
                                                                    ),
                                                                    phq9RecordReference);
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            var patientAssessmentsRecordReference1 =
                                                                PatientAssessmentsRecord
                                                                    .collection
                                                                    .doc();
                                                            await patientAssessmentsRecordReference1
                                                                .set(
                                                                    createPatientAssessmentsRecordData(
                                                              patientDocument:
                                                                  widget
                                                                      .patientdoc
                                                                      ?.reference,
                                                              type: 'PHQ9',
                                                              description:
                                                                  'This brief, 9-question survey is designed to quickly assess symptoms of depression. Your answers will help us understand your mood and guide any necessary support.',
                                                              date:
                                                                  getCurrentTimestamp,
                                                              patient: widget
                                                                  .patientdoc
                                                                  ?.patient,
                                                              phq9doc: _model
                                                                  .phq9created
                                                                  ?.reference,
                                                            ));
                                                            _model.assessment =
                                                                PatientAssessmentsRecord
                                                                    .getDocumentFromData(
                                                                        createPatientAssessmentsRecordData(
                                                                          patientDocument: widget
                                                                              .patientdoc
                                                                              ?.reference,
                                                                          type:
                                                                              'PHQ9',
                                                                          description:
                                                                              'This brief, 9-question survey is designed to quickly assess symptoms of depression. Your answers will help us understand your mood and guide any necessary support.',
                                                                          date:
                                                                              getCurrentTimestamp,
                                                                          patient: widget
                                                                              .patientdoc
                                                                              ?.patient,
                                                                          phq9doc: _model
                                                                              .phq9created
                                                                              ?.reference,
                                                                        ),
                                                                        patientAssessmentsRecordReference1);
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            var patientAssessmentsRecordReference2 =
                                                                PatientAssessmentsRecord
                                                                    .collection
                                                                    .doc();
                                                            await patientAssessmentsRecordReference2
                                                                .set(
                                                                    createPatientAssessmentsRecordData(
                                                              patientDocument:
                                                                  widget
                                                                      .patientdoc
                                                                      ?.reference,
                                                              type: 'GAD7',
                                                              description:
                                                                  'This short 7-item questionnaire is focused on identifying symptoms of anxiety. Your responses will provide valuable insights into your current anxiety levels, aiding in tailored care and support.',
                                                              date:
                                                                  getCurrentTimestamp,
                                                              patient: widget
                                                                  .patientdoc
                                                                  ?.patient,
                                                              day: listViewPatientDocumentsRecord
                                                                      .gad7assessments
                                                                      .length +
                                                                  1,
                                                              gad7doc: _model
                                                                  .gad7created
                                                                  ?.reference,
                                                            ));
                                                            _model.gad7 = PatientAssessmentsRecord
                                                                .getDocumentFromData(
                                                                    createPatientAssessmentsRecordData(
                                                                      patientDocument: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                      type:
                                                                          'GAD7',
                                                                      description:
                                                                          'This short 7-item questionnaire is focused on identifying symptoms of anxiety. Your responses will provide valuable insights into your current anxiety levels, aiding in tailored care and support.',
                                                                      date:
                                                                          getCurrentTimestamp,
                                                                      patient: widget
                                                                          .patientdoc
                                                                          ?.patient,
                                                                      day: listViewPatientDocumentsRecord
                                                                              .gad7assessments
                                                                              .length +
                                                                          1,
                                                                      gad7doc: _model
                                                                          .gad7created
                                                                          ?.reference,
                                                                    ),
                                                                    patientAssessmentsRecordReference2);
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            await listViewPatientDocumentsRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'phq9assessments':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .phq9created
                                                                        ?.reference
                                                                  ]),
                                                                  'gad7assessments':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .gad7created
                                                                        ?.reference
                                                                  ]),
                                                                },
                                                              ),
                                                            });
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            await PatientAssessmentChatsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createPatientAssessmentChatsRecordData(
                                                                  aiResponse:
                                                                      'Hello, I\'m a helpful assessment agent assigned by your therapist to better understand your mental health status. I\'m here to guide you through a PHQ-9 and GAD-7 assessment to gain a clearer picture of how you\'ve been feeling lately. Ready to get started?',
                                                                  date:
                                                                      getCurrentTimestamp,
                                                                  patientAssessment: _model
                                                                      .assessment
                                                                      ?.reference,
                                                                  visible:
                                                                      false,
                                                                  patientMessage:
                                                                      '',
                                                                  patient: widget
                                                                      .patientdoc
                                                                      ?.patient,
                                                                ));
                                                            logFirebaseEvent(
                                                                'Button_show_snack_bar');
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'PHQ-9 and GAD-7 Assessments Sent',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Manrope',
                                                                    color: const Color(
                                                                        0xFFEEEEEE),
                                                                  ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xFF252525),
                                                              ),
                                                            );
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Button_alert_dialog');
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              const Text('Patient Account Not Connected'),
                                                                          content:
                                                                              const Text('Assessments cannot be assigned to this account, as it is not connected to  a patient profile. Would you like to invite a patient to create a new profile?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: const Text('No'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: const Text('Yes'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              logFirebaseEvent(
                                                                  'Button_bottom_sheet');
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    const Color(
                                                                        0x41000000),
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () => _model
                                                                            .unfocusNode
                                                                            .canRequestFocus
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          SizedBox(
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                        child:
                                                                            InvitePatientWidget(
                                                                          patientdoc:
                                                                              widget.patientdoc!,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_close_dialog,_drawer,_etc');
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          }

                                                          setState(() {});
                                                        },
                                                        text:
                                                            'Assign PHQ9 & GAD7',
                                                        icon: const Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              const Color(0x00FFFFFF),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF737687),
                                                                    fontSize:
                                                                        14.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFCED3E0),
                                                            width: 1.2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                    if ((listViewPatientDocumentsRecord
                                                            .phq9assessments
                                                            .isNotEmpty) ||
                                                        (listViewPatientDocumentsRecord
                                                            .gad7assessments
                                                            .isNotEmpty))
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 1.5,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xBDBEC0D1),
                                                          ),
                                                        ),
                                                      ),
                                                    if ((listViewPatientDocumentsRecord
                                                            .phq9assessments
                                                            .isNotEmpty) ||
                                                        (listViewPatientDocumentsRecord
                                                            .gad7assessments
                                                            .isNotEmpty))
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons.check,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 18.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Assessment Last Updated',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF84889F),
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'PHQ-9 and GAD-7 assessments were generated',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xC684889F),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 20.0,
                                                  color: Color(0x66E7E7F5),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Clinical Profile',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF969696),
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget.patientdoc
                                                                ?.name,
                                                            'Patient',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF646464),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      3.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Client since ${dateTimeFormat('yMd', widget.patientdoc?.createdTime)}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFA5A5A5),
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Stack(
                                                      children: [
                                                        if (listViewPatientDocumentsRecord
                                                                    .treatmentPlan ==
                                                                '')
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PATIENT_DASHBOARD_PROFILE_UPDATE_TREATME');
                                                              var shouldSetState =
                                                                  false;
                                                              logFirebaseEvent(
                                                                  'Button_cloud_function');
                                                              try {
                                                                final result =
                                                                    await FirebaseFunctions
                                                                        .instance
                                                                        .httpsCallable(
                                                                            'getSessionNotes')
                                                                        .call({
                                                                  "docid": widget
                                                                      .patientdoc
                                                                      ?.reference
                                                                      .id,
                                                                });
                                                                _model.compilednotes =
                                                                    GetSessionNotesCloudFunctionCallResponse(
                                                                  data: result
                                                                      .data,
                                                                  succeeded:
                                                                      true,
                                                                  resultAsString:
                                                                      result
                                                                          .data
                                                                          .toString(),
                                                                  jsonBody:
                                                                      result
                                                                          .data,
                                                                );
                                                              } on FirebaseFunctionsException catch (error) {
                                                                _model.compilednotes =
                                                                    GetSessionNotesCloudFunctionCallResponse(
                                                                  errorCode:
                                                                      error
                                                                          .code,
                                                                  succeeded:
                                                                      false,
                                                                );
                                                              }

                                                              shouldSetState =
                                                                  true;
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');
                                                              _model.apiResultudw =
                                                                  await CompliantTreatmentPlanCall
                                                                      .call(
                                                                therapynote: functions.replaceDoubleQuotesLines(
                                                                    functions.replaceLineBreaks(_model
                                                                        .compilednotes
                                                                        ?.data)),
                                                                model: 'gpt-4',
                                                              );
                                                              shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .apiResultudw
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                logFirebaseEvent(
                                                                    'Button_backend_call');

                                                                await listViewPatientDocumentsRecord
                                                                    .reference
                                                                    .update(
                                                                        createPatientDocumentsRecordData(
                                                                  treatmentPlan:
                                                                      CompliantTreatmentPlanCall
                                                                          .compliantplan(
                                                                    (_model.apiResultudw
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ));
                                                                logFirebaseEvent(
                                                                    'Button_drawer');
                                                                scaffoldKey
                                                                    .currentState!
                                                                    .openEndDrawer();
                                                              } else {
                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                                return;
                                                              }

                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                            },
                                                            text:
                                                                'Update Treatment Plan',
                                                            icon: const Icon(
                                                              Icons
                                                                  .arrow_upward_sharp,
                                                              size: 16.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 50.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  Colors.white,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xFFD0D1D9),
                                                                width: 1.5,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        if (listViewPatientDocumentsRecord
                                                                    .treatmentPlan !=
                                                                '')
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_DASHBOARD_PROFILE_RECENT_TREATME');
                                                                  logFirebaseEvent(
                                                                      'Button_drawer');
                                                                  scaffoldKey
                                                                      .currentState!
                                                                      .openEndDrawer();
                                                                },
                                                                text:
                                                                    'Recent Treatment Plan',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .remove_red_eye,
                                                                  size: 16.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 60.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Colors
                                                                      .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xFFD0D1D9),
                                                                    width: 1.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PATIENT_DASHBOARD_PROFILE_UPDATE_PLAN_BT');
                                                                    var shouldSetState =
                                                                        false;
                                                                    logFirebaseEvent(
                                                                        'Button_cloud_function');
                                                                    try {
                                                                      final result = await FirebaseFunctions
                                                                          .instance
                                                                          .httpsCallable(
                                                                              'getSessionNotes')
                                                                          .call({
                                                                        "docid": widget
                                                                            .patientdoc
                                                                            ?.reference
                                                                            .id,
                                                                      });
                                                                      _model.compilednotesupdate =
                                                                          GetSessionNotesCloudFunctionCallResponse(
                                                                        data: result
                                                                            .data,
                                                                        succeeded:
                                                                            true,
                                                                        resultAsString: result
                                                                            .data
                                                                            .toString(),
                                                                        jsonBody:
                                                                            result.data,
                                                                      );
                                                                    } on FirebaseFunctionsException catch (error) {
                                                                      _model.compilednotesupdate =
                                                                          GetSessionNotesCloudFunctionCallResponse(
                                                                        errorCode:
                                                                            error.code,
                                                                        succeeded:
                                                                            false,
                                                                      );
                                                                    }

                                                                    shouldSetState =
                                                                        true;
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.apiResultupdate =
                                                                        await CompliantTreatmentPlanCall
                                                                            .call(
                                                                      therapynote: functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(_model
                                                                          .compilednotesupdate
                                                                          ?.data)),
                                                                      model:
                                                                          'gpt-4',
                                                                    );
                                                                    shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .apiResultupdate
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await listViewPatientDocumentsRecord
                                                                          .reference
                                                                          .update(
                                                                              createPatientDocumentsRecordData(
                                                                        treatmentPlan:
                                                                            CompliantTreatmentPlanCall.compliantplan(
                                                                          (_model.apiResultupdate?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Button_drawer');
                                                                      scaffoldKey
                                                                          .currentState!
                                                                          .openEndDrawer();
                                                                    } else {
                                                                      if (shouldSetState) {
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                      return;
                                                                    }

                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Update Plan',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .update_sharp,
                                                                    size: 16.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        60.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Colors
                                                                        .white,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF646464),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFD0D1D9),
                                                                      width:
                                                                          1.5,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/title-icon.svg',
                                                            width: 18.0,
                                                            height: 18.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'yMd',
                                                                listViewPatientDocumentsRecord
                                                                    .dateOfBirth!),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/presenting-concerns-icon.svg',
                                                            width: 18.0,
                                                            height: 18.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Presenting Concerns',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF969696),
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewPatientDocumentsRecord
                                                                          .presentingConcerns,
                                                                      'Presenting concerns have not been analyzed yet.',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFFA5A5A5),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          lineHeight:
                                                                              1.8,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 20.0,
                                                    color: Color(0x66E7E7F5),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'DSM Modeling Suggestions',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF646464),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Summary',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF7C7C7C),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          listViewPatientDocumentsRecord
                                                              .dSM5Insights,
                                                          'DSM-5 modeling has not been generated yet.',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FutureBuilder<
                                                  List<SessionNotesRecord>>(
                                                future:
                                                    querySessionNotesRecordOnce(
                                                  queryBuilder:
                                                      (sessionNotesRecord) =>
                                                          sessionNotesRecord
                                                              .where(
                                                                'patient_document',
                                                                isEqualTo: widget
                                                                    .patientdoc
                                                                    ?.reference,
                                                              )
                                                              .orderBy(
                                                                  'created_time',
                                                                  descending:
                                                                      true),
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
                                                          color:
                                                              Color(0xFFB9DFFF),
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<SessionNotesRecord>
                                                      containerSessionNotesRecordList =
                                                      snapshot.data!;
                                                  final containerSessionNotesRecord =
                                                      containerSessionNotesRecordList
                                                              .isNotEmpty
                                                          ? containerSessionNotesRecordList
                                                              .first
                                                          : null;
                                                  return Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 20.0,
                                                          color:
                                                              Color(0x97DBDBE8),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(30.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              if (listViewPatientDocumentsRecord
                                                                      .patient !=
                                                                  null)
                                                                Container(
                                                                  width: 300.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            18.0,
                                                                        color: Color(
                                                                            0xBCDADFED),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        const Icon(
                                                                          Icons
                                                                              .person_sharp,
                                                                          color:
                                                                              Color(0xFF828282),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Patient Account Linked',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF646464),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'This patient has an account linked to this profile',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF969696),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          lineHeight: 1.8,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (listViewPatientDocumentsRecord
                                                                      .patient ==
                                                                  null)
                                                                Container(
                                                                  width: 500.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            18.0,
                                                                        color: Color(
                                                                            0xBCDADFED),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        const Icon(
                                                                          Icons
                                                                              .warning_amber,
                                                                          color:
                                                                              Color(0xFF828282),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Patient Account Not Linked',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF646464),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Assessments cannot be assigned for patients to complete unless they register and associate an account with this profile',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF969696),
                                                                                          fontSize: 10.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          lineHeight: 1.8,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('PATIENT_DASHBOARD_PROFILE_INVITE_PATIENT');
                                                                                      logFirebaseEvent('Button_bottom_sheet');
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: const Color(0x3D000000),
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: SizedBox(
                                                                                                height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                child: InvitePatientWidget(
                                                                                                  patientdoc: widget.patientdoc!,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    },
                                                                                    text: 'Invite Patient',
                                                                                    icon: const Icon(
                                                                                      Icons.add,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: const Color(0x00FFFFFF),
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF737687),
                                                                                            fontSize: 14.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
                                                                                        color: Color(0xFFCED3E0),
                                                                                        width: 1.2,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 150.0,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFF3F7FF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/vackground-com-0F2pC8_DwvM-unsplash.jpg',
                                                                          width:
                                                                              120.0,
                                                                          height:
                                                                              120.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Intelligent Insights',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              GradientText(
                                                                            'Brief Digest',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF646464),
                                                                                  fontSize: 24.0,
                                                                                  fontWeight: FontWeight.w200,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            colors: const [
                                                                              Color(0xFF4A4A4A),
                                                                              Color(0xFF969696)
                                                                            ],
                                                                            gradientDirection:
                                                                                GradientDirection.ltr,
                                                                            gradientType:
                                                                                GradientType.linear,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.access_time,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 18.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Covered in the last Session',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF7C7C7C),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              containerSessionNotesRecord?.aiSummary,
                                                                              'A summary will appear here once at least one note has been created for this patient.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF969696),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.insights_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 18.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Rolling Insights from Sessions to Date',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF7C7C7C),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewPatientDocumentsRecord.rollingInsights,
                                                                              'Cummulative insights not yet generated.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF969696),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              if ((listViewPatientDocumentsRecord
                                                      .phq9assessments
                                                      .isNotEmpty) &&
                                                  (listViewPatientDocumentsRecord
                                                      .gad7assessments
                                                      .isNotEmpty))
                                                StreamBuilder<List<Phq9Record>>(
                                                  stream: queryPhq9Record(
                                                    queryBuilder:
                                                        (phq9Record) =>
                                                            phq9Record
                                                                .where(
                                                                  'patientdoc',
                                                                  isEqualTo: widget
                                                                      .patientdoc
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'therapist',
                                                                  isEqualTo:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy('date',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return const Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: Color(
                                                                0xFFB9DFFF),
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<Phq9Record>
                                                        containerPhq9RecordList =
                                                        snapshot.data!;
                                                    return Container(
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<Gad7Record>>(
                                                          stream:
                                                              queryGad7Record(
                                                            queryBuilder: (gad7Record) =>
                                                                gad7Record
                                                                    .where(
                                                                      'patientdoc',
                                                                      isEqualTo: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                    )
                                                                    .where(
                                                                      'therapist',
                                                                      isEqualTo:
                                                                          currentUserReference,
                                                                    )
                                                                    .orderBy(
                                                                        'date',
                                                                        descending:
                                                                            true),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return const Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitRipple(
                                                                    color: Color(
                                                                        0xFFB9DFFF),
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<Gad7Record>
                                                                containerGad7RecordList =
                                                                snapshot.data!;
                                                            return Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        20.0,
                                                                    color: Color(
                                                                        0x97DBDBE8),
                                                                    offset:
                                                                        Offset(
                                                                            0.0,
                                                                            2.0),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            30.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              GradientText(
                                                                            'Assessment Insights',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF646464),
                                                                                  fontSize: 22.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            colors: const [
                                                                              Color(0xFF4A4A4A),
                                                                              Color(0xFF969696)
                                                                            ],
                                                                            gradientDirection:
                                                                                GradientDirection.ltr,
                                                                            gradientType:
                                                                                GradientType.linear,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                    decoration: const BoxDecoration(
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                    child: SizedBox(
                                                                                      width: 150.0,
                                                                                      height: 230.0,
                                                                                      child: FlutterFlowLineChart(
                                                                                        data: [
                                                                                          FFLineChartData(
                                                                                            xData: containerPhq9RecordList.map((d) => d.day).toList(),
                                                                                            yData: containerPhq9RecordList.map((d) => d.total).toList(),
                                                                                            settings: LineChartBarData(
                                                                                              color: const Color(0xFFE9F1FF),
                                                                                              barWidth: 1.5,
                                                                                              isCurved: true,
                                                                                              preventCurveOverShooting: true,
                                                                                              dotData: FlDotData(show: false),
                                                                                              belowBarData: BarAreaData(
                                                                                                show: true,
                                                                                                color: const Color(0x4CD2EBFF),
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        chartStylingInfo: const ChartStylingInfo(
                                                                                          enableTooltip: true,
                                                                                          tooltipBackgroundColor: Color(0xFF303030),
                                                                                          backgroundColor: Colors.white,
                                                                                          showBorder: false,
                                                                                        ),
                                                                                        axisBounds: const AxisBounds(),
                                                                                        xAxisLabelInfo: AxisLabelInfo(
                                                                                          title: 'Day',
                                                                                          titleTextStyle: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                          showLabels: true,
                                                                                          labelTextStyle: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            color: const Color(0xFF646464),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 10.0,
                                                                                          ),
                                                                                          labelInterval: 5.0,
                                                                                          labelFormatter: LabelFormatter(
                                                                                            numberFormat: (val) => val.toString(),
                                                                                          ),
                                                                                        ),
                                                                                        yAxisLabelInfo: const AxisLabelInfo(),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'PHQ-9 Scores',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF969696),
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                    decoration: const BoxDecoration(
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                    child: SizedBox(
                                                                                      width: 150.0,
                                                                                      height: 230.0,
                                                                                      child: FlutterFlowLineChart(
                                                                                        data: [
                                                                                          FFLineChartData(
                                                                                            xData: containerGad7RecordList.map((d) => d.day).toList(),
                                                                                            yData: containerGad7RecordList.map((d) => d.total).toList(),
                                                                                            settings: LineChartBarData(
                                                                                              color: const Color(0xFFE9EAFF),
                                                                                              barWidth: 1.5,
                                                                                              isCurved: true,
                                                                                              preventCurveOverShooting: true,
                                                                                              dotData: FlDotData(show: false),
                                                                                              belowBarData: BarAreaData(
                                                                                                show: true,
                                                                                                color: const Color(0x4CD2D6FF),
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        chartStylingInfo: const ChartStylingInfo(
                                                                                          enableTooltip: true,
                                                                                          tooltipBackgroundColor: Color(0xFF303030),
                                                                                          backgroundColor: Colors.white,
                                                                                          showBorder: false,
                                                                                        ),
                                                                                        axisBounds: const AxisBounds(),
                                                                                        xAxisLabelInfo: AxisLabelInfo(
                                                                                          title: 'Day',
                                                                                          titleTextStyle: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                          showLabels: true,
                                                                                          labelTextStyle: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            color: const Color(0xFF646464),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 10.0,
                                                                                          ),
                                                                                          labelInterval: 5.0,
                                                                                          labelFormatter: LabelFormatter(
                                                                                            numberFormat: (val) => val.toString(),
                                                                                          ),
                                                                                        ),
                                                                                        yAxisLabelInfo: const AxisLabelInfo(),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'GAD-7 Scores',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF969696),
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              30.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('PATIENT_DASHBOARD_PROFILE_Container_406a');
                                                                              logFirebaseEvent('Container_bottom_sheet');
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: const Color(0x40000000),
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: Phq9detailsWidget(
                                                                                        patientdoc: widget.patientdoc!,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.12,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: const [
                                                                                  BoxShadow(
                                                                                    blurRadius: 20.0,
                                                                                    color: Color(0xA2DFE4EE),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                    spreadRadius: 3.0,
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(20.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Recent PHQ Result',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF969696),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        '${containerPhq9RecordList.first.total.toString()} - ${containerPhq9RecordList.first.interpretation}',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF646464),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'View more',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  color: const Color(0xFF969696),
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.arrow_right_alt,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 18.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('PATIENT_DASHBOARD_PROFILE_Container_d704');
                                                                                logFirebaseEvent('Container_bottom_sheet');
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: const Color(0x40000000),
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: Gad7detailsWidget(
                                                                                          patientdoc: widget.patientdoc!,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                decoration: BoxDecoration(
                                                                                  color: Colors.white,
                                                                                  boxShadow: const [
                                                                                    BoxShadow(
                                                                                      blurRadius: 20.0,
                                                                                      color: Color(0xA2DFE4EE),
                                                                                      offset: Offset(0.0, 2.0),
                                                                                      spreadRadius: 3.0,
                                                                                    )
                                                                                  ],
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(20.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Recent GAD Result',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF969696),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          '${containerGad7RecordList.first.total.toString()} - ${containerGad7RecordList.first.interpretation}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF646464),
                                                                                                fontSize: 14.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'View more',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF969696),
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_right_alt,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'PATIENT_DASHBOARD_PROFILE_Container_bnwy');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'PatientNotes',
                                                          queryParameters: {
                                                            'patientdocument':
                                                                serializeParam(
                                                              widget.patientdoc,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'patientdocument':
                                                                widget
                                                                    .patientdoc,
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 20.0,
                                                              color: Color(
                                                                  0x66E7E7F5),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  30.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              GradientText(
                                                                'View Patient Notes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          20.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                colors: const [
                                                                  Color(
                                                                      0xFF4A4A4A),
                                                                  Color(
                                                                      0xFF969696)
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .ltr,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFF3F8FF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/clip-994.png',
                                                                            width:
                                                                                180.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'PATIENT_DASHBOARD_PROFILE_Container_veyy');
                                                          logFirebaseEvent(
                                                              'Container_backend_call');

                                                          var sessionNotesRecordReference =
                                                              SessionNotesRecord
                                                                  .collection
                                                                  .doc();
                                                          await sessionNotesRecordReference
                                                              .set(
                                                                  createSessionNotesRecordData(
                                                            processed: false,
                                                            rawNote: '',
                                                            createdTime:
                                                                getCurrentTimestamp,
                                                            patientDocument:
                                                                widget
                                                                    .patientdoc
                                                                    ?.reference,
                                                          ));
                                                          _model.noteFromDash =
                                                              SessionNotesRecord
                                                                  .getDocumentFromData(
                                                                      createSessionNotesRecordData(
                                                                        processed:
                                                                            false,
                                                                        rawNote:
                                                                            '',
                                                                        createdTime:
                                                                            getCurrentTimestamp,
                                                                        patientDocument: widget
                                                                            .patientdoc
                                                                            ?.reference,
                                                                      ),
                                                                      sessionNotesRecordReference);
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'NoteEditor',
                                                            queryParameters: {
                                                              'notedocument':
                                                                  serializeParam(
                                                                _model
                                                                    .noteFromDash,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                              'patientdoc':
                                                                  serializeParam(
                                                                widget
                                                                    .patientdoc,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'notedocument': _model
                                                                  .noteFromDash,
                                                              'patientdoc': widget
                                                                  .patientdoc,
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        0),
                                                              ),
                                                            },
                                                          );

                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.2,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius:
                                                                    20.0,
                                                                color: Color(
                                                                    0x66E7E7F5),
                                                                offset: Offset(
                                                                    0.0, 2.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    30.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GradientText(
                                                                  'Create a New Note',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            20.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  colors: const [
                                                                    Color(
                                                                        0xFF4A4A4A),
                                                                    Color(
                                                                        0xFF969696)
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Right-Arrow-Narrow.svg',
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFFF3F8FF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              20.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/clip-396.png',
                                                                              width: 180.0,
                                                                              height: 120.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    desktop: false,
                  ))
                    wrapWithModel(
                      model: _model.compressedMenuModel,
                      updateCallback: () => setState(() {}),
                      child: const CompressedMenuWidget(),
                    ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color(0xFFF2F6FE),
                            Color(0xFFFFF5F5),
                            Color(0xFFDAE2FF)
                          ],
                          stops: [0.0, 0.3, 0.5, 1.0],
                          begin: AlignmentDirectional(-0.98, -1.0),
                          end: AlignmentDirectional(0.98, 1.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 50.0, 20.0, 30.0),
                        child: StreamBuilder<PatientDocumentsRecord>(
                          stream: PatientDocumentsRecord.getDocument(
                              widget.patientdoc!.reference),
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
                            final listViewPatientDocumentsRecord =
                                snapshot.data!;
                            return ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'PATIENT_DASHBOARD_PROFILE_Icon_jrtuf7ml_');
                                          logFirebaseEvent('Icon_drawer');
                                          scaffoldKey.currentState!
                                              .openDrawer();
                                        },
                                        child: const Icon(
                                          Icons.menu_sharp,
                                          color: Color(0xFF969696),
                                          size: 24.0,
                                        ),
                                      ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PATIENT_DASHBOARD_PROFILE_Image_y9hu3kej');
                                                logFirebaseEvent(
                                                    'Image_navigate_back');
                                                context.safePop();
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Left-Arrow-Narrow.svg',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Daniel Fleury\'s Profile',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF757575),
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 24.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 30.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 30.0;
                                                                  } else {
                                                                    return 30.0;
                                                                  }
                                                                }(),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/calendar-icon.svg',
                                                              width: 22.0,
                                                              height: 22.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Patient since ${dateTimeFormat('yMd', widget.patientdoc?.createdTime)}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF969696),
                                                                    fontSize:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 14.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 16.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 16.0;
                                                                      } else {
                                                                        return 16.0;
                                                                      }
                                                                    }(),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Color(0xFFEDF5FF),
                                          Color(0xFFEEF1FF),
                                          Colors.white
                                        ],
                                        stops: [0.0, 0.3, 0.6, 1.0],
                                        begin: AlignmentDirectional(-0.64, 1.0),
                                        end: AlignmentDirectional(0.64, -1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0x00FFFFFF),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Assessment Agent',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF8B91AC),
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: GradientText(
                                              'Assign Automated Assessments',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF4B505C),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w300,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                              colors: const [
                                                Color(0xFF5A5F76),
                                                Color(0xFFA1ABC0)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Assign GAD-7 and PHQ-9 assessment questionnaires to this patient\'s account',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF828598),
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'PATIENT_DASHBOARD_PROFILE_ASSIGN_P_H_Q9_');
                                                if (widget
                                                        .patientdoc?.patient !=
                                                    null) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var gad7RecordReference =
                                                      Gad7Record.collection
                                                          .doc();
                                                  await gad7RecordReference
                                                      .set(createGad7RecordData(
                                                    date: getCurrentTimestamp,
                                                    patientdoc: widget
                                                        .patientdoc?.reference,
                                                    therapist:
                                                        currentUserReference,
                                                    day:
                                                        listViewPatientDocumentsRecord
                                                                .gad7assessments
                                                                .length +
                                                            1,
                                                    total: 0.0,
                                                    interpretation:
                                                        'GAD-7 Not Completed',
                                                  ));
                                                  _model.gad7createdmobile =
                                                      Gad7Record.getDocumentFromData(
                                                          createGad7RecordData(
                                                            date:
                                                                getCurrentTimestamp,
                                                            patientdoc: widget
                                                                .patientdoc
                                                                ?.reference,
                                                            therapist:
                                                                currentUserReference,
                                                            day: listViewPatientDocumentsRecord
                                                                    .gad7assessments
                                                                    .length +
                                                                1,
                                                            total: 0.0,
                                                            interpretation:
                                                                'GAD-7 Not Completed',
                                                          ),
                                                          gad7RecordReference);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var phq9RecordReference =
                                                      Phq9Record.collection
                                                          .doc();
                                                  await phq9RecordReference
                                                      .set(createPhq9RecordData(
                                                    date: getCurrentTimestamp,
                                                    patientdoc: widget
                                                        .patientdoc?.reference,
                                                    therapist:
                                                        currentUserReference,
                                                    day:
                                                        listViewPatientDocumentsRecord
                                                                .phq9assessments
                                                                .length +
                                                            1,
                                                    total: 0.0,
                                                    interpretation:
                                                        'PHQ-9 Not Completed',
                                                  ));
                                                  _model.phq9createdmobile =
                                                      Phq9Record.getDocumentFromData(
                                                          createPhq9RecordData(
                                                            date:
                                                                getCurrentTimestamp,
                                                            patientdoc: widget
                                                                .patientdoc
                                                                ?.reference,
                                                            therapist:
                                                                currentUserReference,
                                                            day: listViewPatientDocumentsRecord
                                                                    .phq9assessments
                                                                    .length +
                                                                1,
                                                            total: 0.0,
                                                            interpretation:
                                                                'PHQ-9 Not Completed',
                                                          ),
                                                          phq9RecordReference);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var patientAssessmentsRecordReference1 =
                                                      PatientAssessmentsRecord
                                                          .collection
                                                          .doc();
                                                  await patientAssessmentsRecordReference1
                                                      .set(
                                                          createPatientAssessmentsRecordData(
                                                    patientDocument: widget
                                                        .patientdoc?.reference,
                                                    type: 'PHQ9',
                                                    description:
                                                        'This brief, 9-question survey is designed to quickly assess symptoms of depression. Your answers will help us understand your mood and guide any necessary support.',
                                                    date: getCurrentTimestamp,
                                                    patient: widget
                                                        .patientdoc?.patient,
                                                    phq9doc: _model
                                                        .phq9createdmobile
                                                        ?.reference,
                                                  ));
                                                  _model.phq9mobile =
                                                      PatientAssessmentsRecord
                                                          .getDocumentFromData(
                                                              createPatientAssessmentsRecordData(
                                                                patientDocument: widget
                                                                    .patientdoc
                                                                    ?.reference,
                                                                type: 'PHQ9',
                                                                description:
                                                                    'This brief, 9-question survey is designed to quickly assess symptoms of depression. Your answers will help us understand your mood and guide any necessary support.',
                                                                date:
                                                                    getCurrentTimestamp,
                                                                patient: widget
                                                                    .patientdoc
                                                                    ?.patient,
                                                                phq9doc: _model
                                                                    .phq9createdmobile
                                                                    ?.reference,
                                                              ),
                                                              patientAssessmentsRecordReference1);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var patientAssessmentsRecordReference2 =
                                                      PatientAssessmentsRecord
                                                          .collection
                                                          .doc();
                                                  await patientAssessmentsRecordReference2
                                                      .set(
                                                          createPatientAssessmentsRecordData(
                                                    patientDocument: widget
                                                        .patientdoc?.reference,
                                                    type: 'GAD7',
                                                    description:
                                                        'This short 7-item questionnaire is focused on identifying symptoms of anxiety. Your responses will provide valuable insights into your current anxiety levels, aiding in tailored care and support.',
                                                    date: getCurrentTimestamp,
                                                    patient: widget
                                                        .patientdoc?.patient,
                                                    day:
                                                        listViewPatientDocumentsRecord
                                                                .gad7assessments
                                                                .length +
                                                            1,
                                                    gad7doc: _model
                                                        .gad7createdmobile
                                                        ?.reference,
                                                  ));
                                                  _model.gad7mobile =
                                                      PatientAssessmentsRecord
                                                          .getDocumentFromData(
                                                              createPatientAssessmentsRecordData(
                                                                patientDocument: widget
                                                                    .patientdoc
                                                                    ?.reference,
                                                                type: 'GAD7',
                                                                description:
                                                                    'This short 7-item questionnaire is focused on identifying symptoms of anxiety. Your responses will provide valuable insights into your current anxiety levels, aiding in tailored care and support.',
                                                                date:
                                                                    getCurrentTimestamp,
                                                                patient: widget
                                                                    .patientdoc
                                                                    ?.patient,
                                                                day: listViewPatientDocumentsRecord
                                                                        .gad7assessments
                                                                        .length +
                                                                    1,
                                                                gad7doc: _model
                                                                    .gad7createdmobile
                                                                    ?.reference,
                                                              ),
                                                              patientAssessmentsRecordReference2);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await listViewPatientDocumentsRecord
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'phq9assessments':
                                                            FieldValue
                                                                .arrayUnion([
                                                          _model
                                                              .phq9createdmobile
                                                              ?.reference
                                                        ]),
                                                        'gad7assessments':
                                                            FieldValue
                                                                .arrayUnion([
                                                          _model
                                                              .gad7createdmobile
                                                              ?.reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var patientAssessmentChatsRecordReference =
                                                      PatientAssessmentChatsRecord
                                                          .collection
                                                          .doc();
                                                  await patientAssessmentChatsRecordReference
                                                      .set(
                                                          createPatientAssessmentChatsRecordData(
                                                    aiResponse:
                                                        'Hello, I\'m a helpful assessment agent assigned by your therapist to better understand your mental health status. I\'m here to guide you through a PHQ-9 and GAD-7 assessment to gain a clearer picture of how you\'ve been feeling lately. Ready to get started?',
                                                    date: getCurrentTimestamp,
                                                    visible: false,
                                                    patientMessage: '',
                                                    patient: widget
                                                        .patientdoc?.patient,
                                                  ));
                                                  _model.patientassesschatmobile =
                                                      PatientAssessmentChatsRecord
                                                          .getDocumentFromData(
                                                              createPatientAssessmentChatsRecordData(
                                                                aiResponse:
                                                                    'Hello, I\'m a helpful assessment agent assigned by your therapist to better understand your mental health status. I\'m here to guide you through a PHQ-9 and GAD-7 assessment to gain a clearer picture of how you\'ve been feeling lately. Ready to get started?',
                                                                date:
                                                                    getCurrentTimestamp,
                                                                visible: false,
                                                                patientMessage:
                                                                    '',
                                                                patient: widget
                                                                    .patientdoc
                                                                    ?.patient,
                                                              ),
                                                              patientAssessmentChatsRecordReference);
                                                  logFirebaseEvent(
                                                      'Button_show_snack_bar');
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'PHQ-9 and GAD-7 Assessments Sent',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Manrope',
                                                          color:
                                                              const Color(0xFFEEEEEE),
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          const Color(0xFF252525),
                                                    ),
                                                  );
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Patient Account Not Connected'),
                                                                content: const Text(
                                                                    'Assessments cannot be assigned to this account, as it is not connected to  a patient profile. Would you like to invite a patient to create a new profile?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: const Text(
                                                                        'No'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: const Text(
                                                                        'Yes'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    logFirebaseEvent(
                                                        'Button_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          const Color(0x41000000),
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child: SizedBox(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  1.0,
                                                              child:
                                                                  InvitePatientWidget(
                                                                patientdoc: widget
                                                                    .patientdoc!,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Button_close_dialog,_drawer,_etc');
                                                    Navigator.pop(context);
                                                  }
                                                }

                                                setState(() {});
                                              },
                                              text: 'Assign PHQ9 & GAD7',
                                              icon: const Icon(
                                                Icons.add,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0x00FFFFFF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF737687),
                                                          fontSize: 14.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                elevation: 0.0,
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFCED3E0),
                                                  width: 1.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          if ((listViewPatientDocumentsRecord
                                                  .phq9assessments
                                                  .isNotEmpty) ||
                                              (listViewPatientDocumentsRecord
                                                  .gad7assessments.isNotEmpty))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.check,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 18.0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Assessment Last Updated',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF84889F),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'PHQ-9 and GAD-7 assessments were generated',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xC684889F),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Stack(
                                          children: [
                                            if (listViewPatientDocumentsRecord
                                                    .patient !=
                                                null)
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 18.0,
                                                      color: Color(0xBCDADFED),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(20.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Icon(
                                                        Icons.person_sharp,
                                                        color:
                                                            Color(0xFF828282),
                                                        size: 18.0,
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Patient Account Linked',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'This patient has an account linked to this profile',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF969696),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        lineHeight:
                                                                            1.8,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            if (listViewPatientDocumentsRecord
                                                    .patient ==
                                                null)
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 18.0,
                                                      color: Color(0xBCDADFED),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(20.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Icon(
                                                        Icons.warning_amber,
                                                        color:
                                                            Color(0xFF828282),
                                                        size: 18.0,
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Patient Account Not Linked',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Assessments cannot be assigned for patients to complete unless they register and associate an account with this profile',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF969696),
                                                                        fontSize:
                                                                            10.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        lineHeight:
                                                                            1.8,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PATIENT_DASHBOARD_PROFILE_INVITE_PATIENT');
                                                                    logFirebaseEvent(
                                                                        'Button_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0x3D000000),
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                SizedBox(
                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                              child: InvitePatientWidget(
                                                                                patientdoc: widget.patientdoc!,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  text:
                                                                      'Invite Patient',
                                                                  icon: const Icon(
                                                                    Icons.add,
                                                                    size: 20.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: const Color(
                                                                        0x00FFFFFF),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF737687),
                                                                          fontSize:
                                                                              14.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFCED3E0),
                                                                      width:
                                                                          1.2,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      FutureBuilder<List<SessionNotesRecord>>(
                                        future: querySessionNotesRecordOnce(
                                          queryBuilder: (sessionNotesRecord) =>
                                              sessionNotesRecord
                                                  .where(
                                                    'patient_document',
                                                    isEqualTo: widget
                                                        .patientdoc?.reference,
                                                  )
                                                  .orderBy('created_time',
                                                      descending: true),
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
                                          List<SessionNotesRecord>
                                              containerSessionNotesRecordList =
                                              snapshot.data!;
                                          final containerSessionNotesRecord =
                                              containerSessionNotesRecordList
                                                      .isNotEmpty
                                                  ? containerSessionNotesRecordList
                                                      .first
                                                  : null;
                                          return Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 20.0,
                                                  color: Color(0x97DBDBE8),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 150.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0xFFF3F7FF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/vackground-com-0F2pC8_DwvM-unsplash.jpg',
                                                                width: 120.0,
                                                                height: 120.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Intelligent Insights',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: GradientText(
                                                              'Brief Digest',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF646464),
                                                                    fontSize:
                                                                        24.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w200,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                              colors: const [
                                                                Color(
                                                                    0xFF4A4A4A),
                                                                Color(
                                                                    0xFF969696)
                                                              ],
                                                              gradientDirection:
                                                                  GradientDirection
                                                                      .ltr,
                                                              gradientType:
                                                                  GradientType
                                                                      .linear,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .check_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 18.0,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Covered in the last Session',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                const Color(0xFF7C7C7C),
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Right-Arrow-Narrow.svg',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerSessionNotesRecord
                                                                    ?.aiSummary,
                                                                'A summary will appear here once at least one note has been created for this patient.',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF969696),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    lineHeight:
                                                                        1.5,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .insights_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 18.0,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Rolling Insights from Sessions to Date',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                const Color(0xFF7C7C7C),
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Right-Arrow-Narrow.svg',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewPatientDocumentsRecord
                                                                    .rollingInsights,
                                                                'Cummulative insights not yet generated.',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF969696),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    lineHeight:
                                                                        1.5,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 20.0,
                                                color: Color(0x66E7E7F5),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Clinical Profile',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF969696),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .patientdoc?.name,
                                                          'Patient',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF646464),
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    3.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Client since ${dateTimeFormat('yMd', widget.patientdoc?.createdTime)}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFFA5A5A5),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: Stack(
                                                    children: [
                                                      if (listViewPatientDocumentsRecord
                                                                  .treatmentPlan ==
                                                              '')
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PATIENT_DASHBOARD_PROFILE_UPDATE_TREATME');
                                                            var shouldSetState =
                                                                false;
                                                            logFirebaseEvent(
                                                                'Button_cloud_function');
                                                            try {
                                                              final result =
                                                                  await FirebaseFunctions
                                                                      .instance
                                                                      .httpsCallable(
                                                                          'getSessionNotes')
                                                                      .call({
                                                                "docid": widget
                                                                    .patientdoc
                                                                    ?.reference
                                                                    .id,
                                                              });
                                                              _model.compilednotesmobile =
                                                                  GetSessionNotesCloudFunctionCallResponse(
                                                                data:
                                                                    result.data,
                                                                succeeded: true,
                                                                resultAsString:
                                                                    result.data
                                                                        .toString(),
                                                                jsonBody:
                                                                    result.data,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.compilednotesmobile =
                                                                  GetSessionNotesCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            shouldSetState =
                                                                true;
                                                            logFirebaseEvent(
                                                                'Button_backend_call');
                                                            _model.apiResultudwmobile =
                                                                await CompliantTreatmentPlanCall
                                                                    .call(
                                                              therapynote: functions
                                                                  .replaceDoubleQuotesLines(
                                                                      functions.replaceLineBreaks(_model
                                                                          .compilednotesmobile
                                                                          ?.data)),
                                                              model: 'gpt-4',
                                                            );
                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .apiResultudwmobile
                                                                    ?.succeeded ??
                                                                true)) {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              await listViewPatientDocumentsRecord
                                                                  .reference
                                                                  .update(
                                                                      createPatientDocumentsRecordData(
                                                                treatmentPlan:
                                                                    CompliantTreatmentPlanCall
                                                                        .compliantplan(
                                                                  (_model.apiResultudwmobile
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ));
                                                              logFirebaseEvent(
                                                                  'Button_drawer');
                                                              scaffoldKey
                                                                  .currentState!
                                                                  .openEndDrawer();
                                                            } else {
                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                              return;
                                                            }

                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                          },
                                                          text:
                                                              'Update Treatment Plan',
                                                          icon: const Icon(
                                                            Icons
                                                                .arrow_upward_sharp,
                                                            size: 16.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 50.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Colors.white,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D1D9),
                                                              width: 1.5,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      if (listViewPatientDocumentsRecord
                                                                  .treatmentPlan !=
                                                              '')
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'PATIENT_DASHBOARD_PROFILE_RECENT_TREATME');
                                                                logFirebaseEvent(
                                                                    'Button_drawer');
                                                                scaffoldKey
                                                                    .currentState!
                                                                    .openEndDrawer();
                                                              },
                                                              text:
                                                                  'Recent Treatment Plan',
                                                              icon: const Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                size: 16.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 60.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Colors
                                                                    .white,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFD0D1D9),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_DASHBOARD_PROFILE_UPDATE_PLAN_BT');
                                                                  var shouldSetState =
                                                                      false;
                                                                  logFirebaseEvent(
                                                                      'Button_cloud_function');
                                                                  try {
                                                                    final result = await FirebaseFunctions
                                                                        .instance
                                                                        .httpsCallable(
                                                                            'getSessionNotes')
                                                                        .call({
                                                                      "docid": widget
                                                                          .patientdoc
                                                                          ?.reference
                                                                          .id,
                                                                    });
                                                                    _model.compilednotesupdatemobile =
                                                                        GetSessionNotesCloudFunctionCallResponse(
                                                                      data: result
                                                                          .data,
                                                                      succeeded:
                                                                          true,
                                                                      resultAsString: result
                                                                          .data
                                                                          .toString(),
                                                                      jsonBody:
                                                                          result
                                                                              .data,
                                                                    );
                                                                  } on FirebaseFunctionsException catch (error) {
                                                                    _model.compilednotesupdatemobile =
                                                                        GetSessionNotesCloudFunctionCallResponse(
                                                                      errorCode:
                                                                          error
                                                                              .code,
                                                                      succeeded:
                                                                          false,
                                                                    );
                                                                  }

                                                                  shouldSetState =
                                                                      true;
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.apiResultupdatemobile =
                                                                      await CompliantTreatmentPlanCall
                                                                          .call(
                                                                    therapynote:
                                                                        functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(_model
                                                                            .compilednotesupdatemobile
                                                                            ?.data)),
                                                                    model:
                                                                        'gpt-4',
                                                                  );
                                                                  shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .apiResultupdatemobile
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await listViewPatientDocumentsRecord
                                                                        .reference
                                                                        .update(
                                                                            createPatientDocumentsRecordData(
                                                                      treatmentPlan:
                                                                          CompliantTreatmentPlanCall
                                                                              .compliantplan(
                                                                        (_model.apiResultupdatemobile?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_drawer');
                                                                    scaffoldKey
                                                                        .currentState!
                                                                        .openEndDrawer();
                                                                  } else {
                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                    return;
                                                                  }

                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                text:
                                                                    'Update Plan',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .update_sharp,
                                                                  size: 16.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 60.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Colors
                                                                      .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xFFD0D1D9),
                                                                    width: 1.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/title-icon.svg',
                                                          width: 18.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '20 year old male',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/presenting-concerns-icon.svg',
                                                          width: 18.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Presenting Concerns',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF969696),
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    listViewPatientDocumentsRecord
                                                                        .presentingConcerns,
                                                                    'Presenting concerns have not been analyzed yet.',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFFA5A5A5),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        lineHeight:
                                                                            1.8,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 20.0,
                                                color: Color(0x66E7E7F5),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'DSM Modeling Suggestions',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF646464),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Summary',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF7C7C7C),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewPatientDocumentsRecord
                                                          .dSM5Insights,
                                                      'DSM-5 modeling has not been generated yet.',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF969696),
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                          lineHeight: 1.5,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_DASHBOARD_PROFILE_Container_xjpn');
                                            logFirebaseEvent(
                                                'Container_navigate_to');

                                            context.pushNamed(
                                              'PatientNotes',
                                              queryParameters: {
                                                'patientdocument':
                                                    serializeParam(
                                                  widget.patientdoc,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'patientdocument':
                                                    widget.patientdoc,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 20.0,
                                                  color: Color(0x66E7E7F5),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GradientText(
                                                    'View Patient Notes',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF646464),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                    colors: const [
                                                      Color(0xFF4A4A4A),
                                                      Color(0xFF969696)
                                                    ],
                                                    gradientDirection:
                                                        GradientDirection.ltr,
                                                    gradientType:
                                                        GradientType.linear,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                        width: 40.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0xFFF3F8FF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/clip-994.png',
                                                                width: 180.0,
                                                                height: 120.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_DASHBOARD_PROFILE_Container_r89f');
                                            logFirebaseEvent(
                                                'Container_backend_call');

                                            var sessionNotesRecordReference =
                                                SessionNotesRecord.collection
                                                    .doc();
                                            await sessionNotesRecordReference
                                                .set(
                                                    createSessionNotesRecordData(
                                              processed: false,
                                              rawNote: '',
                                              createdTime: getCurrentTimestamp,
                                              patientDocument:
                                                  widget.patientdoc?.reference,
                                            ));
                                            _model.noteFromDashMobile =
                                                SessionNotesRecord.getDocumentFromData(
                                                    createSessionNotesRecordData(
                                                      processed: false,
                                                      rawNote: '',
                                                      createdTime:
                                                          getCurrentTimestamp,
                                                      patientDocument: widget
                                                          .patientdoc
                                                          ?.reference,
                                                    ),
                                                    sessionNotesRecordReference);
                                            logFirebaseEvent(
                                                'Container_navigate_to');

                                            context.pushNamed(
                                              'NoteEditor',
                                              queryParameters: {
                                                'notedocument': serializeParam(
                                                  _model.noteFromDashMobile,
                                                  ParamType.Document,
                                                ),
                                                'patientdoc': serializeParam(
                                                  widget.patientdoc,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'notedocument':
                                                    _model.noteFromDashMobile,
                                                'patientdoc': widget.patientdoc,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 20.0,
                                                  color: Color(0x66E7E7F5),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GradientText(
                                                    'Create a New Note',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF646464),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                    colors: const [
                                                      Color(0xFF4A4A4A),
                                                      Color(0xFF969696)
                                                    ],
                                                    gradientDirection:
                                                        GradientDirection.ltr,
                                                    gradientType:
                                                        GradientType.linear,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                        width: 40.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0xFFF3F8FF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/clip-396.png',
                                                                width: 180.0,
                                                                height: 120.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if ((listViewPatientDocumentsRecord
                                              .phq9assessments.isNotEmpty) &&
                                          (listViewPatientDocumentsRecord
                                              .gad7assessments.isNotEmpty))
                                        StreamBuilder<List<Phq9Record>>(
                                          stream: queryPhq9Record(
                                            queryBuilder: (phq9Record) =>
                                                phq9Record
                                                    .where(
                                                      'patientdoc',
                                                      isEqualTo: widget
                                                          .patientdoc
                                                          ?.reference,
                                                    )
                                                    .where(
                                                      'therapist',
                                                      isEqualTo:
                                                          currentUserReference,
                                                    )
                                                    .orderBy('date',
                                                        descending: true),
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
                                            List<Phq9Record>
                                                containerPhq9RecordList =
                                                snapshot.data!;
                                            return Container(
                                              decoration: const BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<Gad7Record>>(
                                                  stream: queryGad7Record(
                                                    queryBuilder:
                                                        (gad7Record) =>
                                                            gad7Record
                                                                .where(
                                                                  'patientdoc',
                                                                  isEqualTo: widget
                                                                      .patientdoc
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'therapist',
                                                                  isEqualTo:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy('date',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return const Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: Color(
                                                                0xFFB9DFFF),
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<Gad7Record>
                                                        containerGad7RecordList =
                                                        snapshot.data!;
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: Color(
                                                                0x97DBDBE8),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            30.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  GradientText(
                                                                'Assessment Insights',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          22.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                colors: const [
                                                                  Color(
                                                                      0xFF4A4A4A),
                                                                  Color(
                                                                      0xFF969696)
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .ltr,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_DASHBOARD_PROFILE_Container_8nrp');
                                                                  logFirebaseEvent(
                                                                      'Container_bottom_sheet');
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0x40000000),
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              Phq9detailsWidget(
                                                                            patientdoc:
                                                                                widget.patientdoc!,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            20.0,
                                                                        color: Color(
                                                                            0xA2DFE4EE),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                        spreadRadius:
                                                                            3.0,
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Recent PHQ Result',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '${containerPhq9RecordList.first.total.toString()} - ${containerPhq9RecordList.first.interpretation}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF646464),
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'View more',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF969696),
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.arrow_right_alt,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 18.0,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_DASHBOARD_PROFILE_Container_skpl');
                                                                  logFirebaseEvent(
                                                                      'Container_bottom_sheet');
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0x40000000),
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              Gad7detailsWidget(
                                                                            patientdoc:
                                                                                widget.patientdoc!,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            20.0,
                                                                        color: Color(
                                                                            0xA2DFE4EE),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                        spreadRadius:
                                                                            3.0,
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Recent GAD Result',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '${containerGad7RecordList.first.total.toString()} - ${containerGad7RecordList.first.interpretation}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF646464),
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'View more',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF969696),
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.arrow_right_alt,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 18.0,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          height:
                                                                              230.0,
                                                                          child:
                                                                              FlutterFlowLineChart(
                                                                            data: [
                                                                              FFLineChartData(
                                                                                xData: containerPhq9RecordList.map((d) => d.day).toList(),
                                                                                yData: containerPhq9RecordList.map((d) => d.total).toList(),
                                                                                settings: LineChartBarData(
                                                                                  color: const Color(0xFFE9F1FF),
                                                                                  barWidth: 1.5,
                                                                                  isCurved: true,
                                                                                  preventCurveOverShooting: true,
                                                                                  dotData: FlDotData(show: false),
                                                                                  belowBarData: BarAreaData(
                                                                                    show: true,
                                                                                    color: const Color(0x4CD2EBFF),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                            chartStylingInfo:
                                                                                const ChartStylingInfo(
                                                                              enableTooltip: true,
                                                                              tooltipBackgroundColor: Color(0xFF303030),
                                                                              backgroundColor: Colors.white,
                                                                              showBorder: false,
                                                                            ),
                                                                            axisBounds:
                                                                                const AxisBounds(),
                                                                            xAxisLabelInfo:
                                                                                AxisLabelInfo(
                                                                              title: 'Day',
                                                                              titleTextStyle: GoogleFonts.getFont(
                                                                                'Manrope',
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 12.0,
                                                                              ),
                                                                              showLabels: true,
                                                                              labelTextStyle: GoogleFonts.getFont(
                                                                                'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 10.0,
                                                                              ),
                                                                              labelInterval: 5.0,
                                                                              labelFormatter: LabelFormatter(
                                                                                numberFormat: (val) => val.toString(),
                                                                              ),
                                                                            ),
                                                                            yAxisLabelInfo:
                                                                                const AxisLabelInfo(),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'PHQ-9 Scores',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF969696),
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          SizedBox(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        height:
                                                                            230.0,
                                                                        child:
                                                                            FlutterFlowLineChart(
                                                                          data: [
                                                                            FFLineChartData(
                                                                              xData: containerGad7RecordList.map((d) => d.day).toList(),
                                                                              yData: containerGad7RecordList.map((d) => d.total).toList(),
                                                                              settings: LineChartBarData(
                                                                                color: const Color(0xFFE9EAFF),
                                                                                barWidth: 1.5,
                                                                                isCurved: true,
                                                                                preventCurveOverShooting: true,
                                                                                dotData: FlDotData(show: false),
                                                                                belowBarData: BarAreaData(
                                                                                  show: true,
                                                                                  color: const Color(0x4CD2D6FF),
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                          chartStylingInfo:
                                                                              const ChartStylingInfo(
                                                                            enableTooltip:
                                                                                true,
                                                                            tooltipBackgroundColor:
                                                                                Color(0xFF303030),
                                                                            backgroundColor:
                                                                                Colors.white,
                                                                            showBorder:
                                                                                false,
                                                                          ),
                                                                          axisBounds:
                                                                              const AxisBounds(),
                                                                          xAxisLabelInfo:
                                                                              AxisLabelInfo(
                                                                            title:
                                                                                'Day',
                                                                            titleTextStyle:
                                                                                GoogleFonts.getFont(
                                                                              'Manrope',
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 12.0,
                                                                            ),
                                                                            showLabels:
                                                                                true,
                                                                            labelTextStyle:
                                                                                GoogleFonts.getFont(
                                                                              'Manrope',
                                                                              color: const Color(0xFF646464),
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                            labelInterval:
                                                                                5.0,
                                                                            labelFormatter:
                                                                                LabelFormatter(
                                                                              numberFormat: (val) => val.toString(),
                                                                            ),
                                                                          ),
                                                                          yAxisLabelInfo:
                                                                              const AxisLabelInfo(),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'GAD-7 Scores',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF969696),
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
