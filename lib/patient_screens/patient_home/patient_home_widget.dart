import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patient_home_model.dart';
export 'patient_home_model.dart';

class PatientHomeWidget extends StatefulWidget {
  const PatientHomeWidget({super.key});

  @override
  _PatientHomeWidgetState createState() => _PatientHomeWidgetState();
}

class _PatientHomeWidgetState extends State<PatientHomeWidget> {
  late PatientHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientHomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PatientHome'});
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
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.85,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(40.0, 50.0, 40.0, 40.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Assessments',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF646464),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Your therapist has released the following assessments to complete',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF969696),
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child:
                                  StreamBuilder<List<PatientAssessmentsRecord>>(
                                stream: queryPatientAssessmentsRecord(
                                  queryBuilder: (patientAssessmentsRecord) =>
                                      patientAssessmentsRecord
                                          .where(
                                            'patient',
                                            isEqualTo: currentUserReference,
                                          )
                                          .orderBy('date', descending: true),
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
                                  List<PatientAssessmentsRecord>
                                      listViewPatientAssessmentsRecordList =
                                      snapshot.data!;
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewPatientAssessmentsRecordList
                                            .length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewPatientAssessmentsRecord =
                                          listViewPatientAssessmentsRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_HOME_Container_pl71k25n_ON_TAP');
                                            if (listViewPatientAssessmentsRecord
                                                .completed) {
                                              return;
                                            }

                                            if (listViewPatientAssessmentsRecord
                                                    .type ==
                                                'PHQ9') {
                                              logFirebaseEvent(
                                                  'Container_navigate_to');

                                              context.pushNamed(
                                                'PatientPHQ',
                                                queryParameters: {
                                                  'patientassessdoc':
                                                      serializeParam(
                                                    listViewPatientAssessmentsRecord,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'patientassessdoc':
                                                      listViewPatientAssessmentsRecord,
                                                },
                                              );
                                            } else if (listViewPatientAssessmentsRecord
                                                    .type ==
                                                'GAD7') {
                                              logFirebaseEvent(
                                                  'Container_navigate_to');

                                              context.pushNamed(
                                                'PatientGAD',
                                                queryParameters: {
                                                  'patientassessdoc':
                                                      serializeParam(
                                                    listViewPatientAssessmentsRecord,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'patientassessdoc':
                                                      listViewPatientAssessmentsRecord,
                                                },
                                              );
                                            } else if (listViewPatientAssessmentsRecord
                                                    .type ==
                                                'ISI') {
                                            } else {
                                              return;
                                            }
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
                                                  color: Color(0xC3DFE4ED),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Questionnaire Posted ${dateTimeFormat('relative', listViewPatientAssessmentsRecord.date)}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '${listViewPatientAssessmentsRecord.type} Assessment',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF646464),
                                                                fontSize: 16.0,
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      listViewPatientAssessmentsRecord
                                                          .description,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
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
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Stack(
                                                        children: [
                                                          if (listViewPatientAssessmentsRecord
                                                                  .completed ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFFE7FFF4),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2000.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      const Icon(
                                                                        Icons
                                                                            .check,
                                                                        color: Color(
                                                                            0xFF227A22),
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Complete',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF227A22),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if (listViewPatientAssessmentsRecord
                                                                  .completed ==
                                                              false)
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFFFFE7E7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2000.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      const Icon(
                                                                        Icons
                                                                            .notifications_active_outlined,
                                                                        color: Color(
                                                                            0xFF7A2722),
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Not Started',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF7A2722),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
      ),
    );
  }
}
