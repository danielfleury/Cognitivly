import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/business_associate_agreement_widget.dart';
import '/components/compressed_menu_widget.dart';
import '/components/noteoptions_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'patient_notes_model.dart';
export 'patient_notes_model.dart';

class PatientNotesWidget extends StatefulWidget {
  const PatientNotesWidget({
    super.key,
    required this.patientdocument,
  });

  final PatientDocumentsRecord? patientdocument;

  @override
  _PatientNotesWidgetState createState() => _PatientNotesWidgetState();
}

class _PatientNotesWidgetState extends State<PatientNotesWidget> {
  late PatientNotesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientNotesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientNotes'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideMenuModel,
            updateCallback: () => setState(() {}),
            child: const SideMenuWidget(),
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 50.0, 20.0, 20.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Row(
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
                                              'PATIENT_NOTES_PAGE_Image_zh1pyf6d_ON_TAP');
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'PatientExplorer',
                                            extra: <String, dynamic>{
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
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Left-Arrow-Narrow.svg',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${widget.patientdocument?.name}\'s Notes',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF646464),
                                                    fontSize: 30.0,
                                                    fontWeight: FontWeight.w300,
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
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
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
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Patient since ${dateTimeFormat('yMMMd', widget.patientdocument?.createdTime)}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child:
                                        StreamBuilder<List<SessionNotesRecord>>(
                                      stream: querySessionNotesRecord(
                                        queryBuilder: (sessionNotesRecord) =>
                                            sessionNotesRecord
                                                .where(
                                                  'patient_document',
                                                  isEqualTo: widget
                                                      .patientdocument
                                                      ?.reference,
                                                )
                                                .where(
                                                  'user',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .orderBy('created_time',
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
                                        List<SessionNotesRecord>
                                            textFieldSessionNotesRecordList =
                                            snapshot.data!;
                                        return SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          child: TextFormField(
                                            controller: _model.textController1,
                                            focusNode:
                                                _model.textFieldFocusNode1,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController1',
                                              const Duration(milliseconds: 2000),
                                              () async {
                                                logFirebaseEvent(
                                                    'PATIENT_NOTES_TextField_y7nw8wq0_ON_TEXT');
                                                logFirebaseEvent(
                                                    'TextField_simple_search');
                                                safeSetState(() {
                                                  _model.simpleSearchResults1 =
                                                      TextSearch(
                                                    textFieldSessionNotesRecordList
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.aiSummary,
                                                            record.rawNoteTitle]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .textController1
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList();
                                                });
                                              },
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search Notes',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFFA5A5A5),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily),
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC1C1C1),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC0C0C0),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(30.0, 22.0,
                                                          30.0, 22.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF646464),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                            validator: _model
                                                .textController1Validator
                                                .asValidator(context),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'PATIENT_NOTES_PAGE_NEW_NOTE_BTN_ON_TAP');
                                        if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.baaSignature,
                                                    '') !=
                                                '') {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var sessionNotesRecordReference =
                                              SessionNotesRecord.collection
                                                  .doc();
                                          await sessionNotesRecordReference
                                              .set(createSessionNotesRecordData(
                                            processed: false,
                                            rawNote: '',
                                            createdTime: getCurrentTimestamp,
                                            patientDocument: widget
                                                .patientdocument?.reference,
                                            rawNoteTitle: 'Untitled Note',
                                            user: currentUserReference,
                                          ));
                                          _model.notePassiveParam =
                                              SessionNotesRecord.getDocumentFromData(
                                                  createSessionNotesRecordData(
                                                    processed: false,
                                                    rawNote: '',
                                                    createdTime:
                                                        getCurrentTimestamp,
                                                    patientDocument: widget
                                                        .patientdocument
                                                        ?.reference,
                                                    rawNoteTitle:
                                                        'Untitled Note',
                                                    user: currentUserReference,
                                                  ),
                                                  sessionNotesRecordReference);
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'NoteEditor',
                                            queryParameters: {
                                              'notedocument': serializeParam(
                                                _model.notePassiveParam,
                                                ParamType.Document,
                                              ),
                                              'patientdoc': serializeParam(
                                                widget.patientdocument,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'notedocument':
                                                  _model.notePassiveParam,
                                              'patientdoc':
                                                  widget.patientdocument,
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
                                        } else {
                                          logFirebaseEvent(
                                              'Button_bottom_sheet');
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: const Color(0x2F000000),
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: SizedBox(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    child:
                                                        const BusinessAssociateAgreementWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        }

                                        setState(() {});
                                      },
                                      text: 'New Note',
                                      icon: const Icon(
                                        Icons.add_sharp,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 60.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFF1F7FF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0x9D11215C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2000.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'PATIENT_NOTES_VIEW_PATIENT_PROFILE_BTN_O');
                                        if (widget.patientdocument!
                                            .profileGeneration) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PatientDashboardProfile',
                                            queryParameters: {
                                              'patientdoc': serializeParam(
                                                widget.patientdocument,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'patientdoc':
                                                  widget.patientdocument,
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
                                                            'Smart Profile Not Yet Generated'),
                                                        content: const Text(
                                                            'You have not generated a profile for this patient. Would you like to create a smart profile?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: const Text('No'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: const Text('Yes'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.pushNamed(
                                              'PatientProfiles',
                                              extra: <String, dynamic>{
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
                                          } else {
                                            logFirebaseEvent(
                                                'Button_close_dialog,_drawer,_etc');
                                            Navigator.pop(context);
                                          }
                                        }
                                      },
                                      text: 'View Patient Profile',
                                      icon: const Icon(
                                        Icons.electric_bolt,
                                        size: 16.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 60.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
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
                                          color: Color(0xFFCED3DC),
                                          width: 1.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      if (_model.textController1.text == '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: StreamBuilder<
                                              List<SessionNotesRecord>>(
                                            stream: querySessionNotesRecord(
                                              queryBuilder:
                                                  (sessionNotesRecord) =>
                                                      sessionNotesRecord
                                                          .where(
                                                            'patient_document',
                                                            isEqualTo: widget
                                                                .patientdocument
                                                                ?.reference,
                                                          )
                                                          .where(
                                                            'user',
                                                            isEqualTo:
                                                                currentUserReference,
                                                          )
                                                          .orderBy(
                                                              'created_time',
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
                                              List<SessionNotesRecord>
                                                  inactiveSearchSessionNotesRecordList =
                                                  snapshot.data!;
                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  crossAxisSpacing: 30.0,
                                                  mainAxisSpacing: 30.0,
                                                  childAspectRatio: 0.8,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    inactiveSearchSessionNotesRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    inactiveSearchIndex) {
                                                  final inactiveSearchSessionNotesRecord =
                                                      inactiveSearchSessionNotesRecordList[
                                                          inactiveSearchIndex];
                                                  return InkWell(
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
                                                          'PATIENT_NOTES_Container_au14cnjr_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Container_navigate_to');

                                                      context.pushNamed(
                                                        'NoteEditor',
                                                        queryParameters: {
                                                          'notedocument':
                                                              serializeParam(
                                                            inactiveSearchSessionNotesRecord,
                                                            ParamType.Document,
                                                          ),
                                                          'patientdoc':
                                                              serializeParam(
                                                            widget
                                                                .patientdocument,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'notedocument':
                                                              inactiveSearchSessionNotesRecord,
                                                          'patientdoc': widget
                                                              .patientdocument,
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
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
                                                                0xFFF0F0F0),
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
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/images/Frame.svg',
                                                                          width:
                                                                              25.0,
                                                                          height:
                                                                              25.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'AI Generated | ${inactiveSearchSessionNotesRecord.aiNoteTitle}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFFA7A7A7),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                        'PATIENT_NOTES_PAGE_Icon_7sxn4scp_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0x4C000000),
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
                                                                              child: NoteoptionsWidget(
                                                                                patientdocument: widget.patientdocument!,
                                                                                patientnote: inactiveSearchSessionNotesRecord,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: const Icon(
                                                                    Icons
                                                                        .keyboard_control_sharp,
                                                                    color: Color(
                                                                        0xFF646464),
                                                                    size: 20.0,
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
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: const Color(
                                                                        0xE0C9CFDA),
                                                                    width: 1.2,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          10.0,
                                                                          15.0,
                                                                          10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        dateTimeFormat(
                                                                            'yMd',
                                                                            inactiveSearchSessionNotesRecord.createdTime!),
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
                                                                    ],
                                                                  ),
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
                                                              child: Text(
                                                                inactiveSearchSessionNotesRecord
                                                                    .rawNoteTitle,
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
                                                              child: Container(
                                                                height: 110.0,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Text(
                                                                        inactiveSearchSessionNotesRecord
                                                                            .aiSummary,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF969696),
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              lineHeight: 1.8,
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
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Right-Arrow-Narrow.svg',
                                                                  width: 35.0,
                                                                  height: 35.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      if (_model.textController1.text != '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final searchnotes = _model
                                                  .simpleSearchResults1
                                                  .map((e) => e)
                                                  .toList();
                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  crossAxisSpacing: 30.0,
                                                  mainAxisSpacing: 30.0,
                                                  childAspectRatio: 0.8,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: searchnotes.length,
                                                itemBuilder: (context,
                                                    searchnotesIndex) {
                                                  final searchnotesItem =
                                                      searchnotes[
                                                          searchnotesIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
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
                                                            'PATIENT_NOTES_Container_mfgbwwfa_ON_TAP');
                                                        if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.baaSignature,
                                                                    '') !=
                                                                '') {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'NoteEditor',
                                                            queryParameters: {
                                                              'notedocument':
                                                                  serializeParam(
                                                                searchnotesItem,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                              'patientdoc':
                                                                  serializeParam(
                                                                widget
                                                                    .patientdocument,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'notedocument':
                                                                  searchnotesItem,
                                                              'patientdoc': widget
                                                                  .patientdocument,
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
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Container_bottom_sheet');
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                const Color(
                                                                    0x2D000000),
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return GestureDetector(
                                                                onTap: () => _model
                                                                        .unfocusNode
                                                                        .canRequestFocus
                                                                    ? FocusScope.of(
                                                                            context)
                                                                        .requestFocus(_model
                                                                            .unfocusNode)
                                                                    : FocusScope.of(
                                                                            context)
                                                                        .unfocus(),
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      SizedBox(
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    child:
                                                                        const BusinessAssociateAgreementWidget(),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        }
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 20.0,
                                                              color: Color(
                                                                  0xFFF0F0F0),
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
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Frame.svg',
                                                                            width:
                                                                                25.0,
                                                                            height:
                                                                                25.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'AI Generated | ${searchnotesItem.aiNoteTitle}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFFA7A7A7),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PATIENT_NOTES_PAGE_Icon_z535iy1d_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_bottom_sheet');
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            const Color(0x4C000000),
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: SizedBox(
                                                                                height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                child: NoteoptionsWidget(
                                                                                  patientdocument: widget.patientdocument!,
                                                                                  patientnote: searchnotesItem,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .keyboard_control_sharp,
                                                                      color: Color(
                                                                          0xFF646464),
                                                                      size:
                                                                          20.0,
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
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xE0C9CFDA),
                                                                      width:
                                                                          1.2,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            10.0,
                                                                            15.0,
                                                                            10.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                              'yMd',
                                                                              searchnotesItem.createdTime!),
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
                                                                      ],
                                                                    ),
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
                                                                child: Text(
                                                                  searchnotesItem
                                                                      .rawNoteTitle,
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
                                                                            FontWeight.w300,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                  height: 110.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          searchnotesItem
                                                                              .aiSummary,
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                lineHeight: 1.8,
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
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                    width: 35.0,
                                                                    height:
                                                                        35.0,
                                                                    fit: BoxFit
                                                                        .cover,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                    tablet: false,
                  ))
                    wrapWithModel(
                      model: _model.compressedMenuModel,
                      updateCallback: () => setState(() {}),
                      child: const CompressedMenuWidget(),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 50.0, 20.0, 20.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        'PATIENT_NOTES_PAGE_Icon_4kvi5qax_ON_TAP');
                                    logFirebaseEvent('Icon_drawer');
                                    scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: const Icon(
                                    Icons.menu_sharp,
                                    color: Color(0xFF969696),
                                    size: 24.0,
                                  ),
                                ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  'PATIENT_NOTES_PAGE_Image_ik84mywh_ON_TAP');
                                              logFirebaseEvent(
                                                  'Image_navigate_to');

                                              context.pushNamed(
                                                'PatientExplorer',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                                  '${widget.patientdocument?.name}\'s Notes',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF757575),
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 24.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 30.0;
                                                          } else {
                                                            return 30.0;
                                                          }
                                                        }(),
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
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/calendar-icon.svg',
                                                          width: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 20.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 25.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 25.0;
                                                            } else {
                                                              return 25.0;
                                                            }
                                                          }(),
                                                          height: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 20.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 25.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 25.0;
                                                            } else {
                                                              return 25.0;
                                                            }
                                                          }(),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Patient since ${dateTimeFormat('yMMMd', widget.patientdocument?.createdTime)}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 14.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 16.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: StreamBuilder<
                                          List<SessionNotesRecord>>(
                                        stream: querySessionNotesRecord(
                                          queryBuilder: (sessionNotesRecord) =>
                                              sessionNotesRecord
                                                  .where(
                                                    'patient_document',
                                                    isEqualTo: widget
                                                        .patientdocument
                                                        ?.reference,
                                                  )
                                                  .where(
                                                    'user',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  )
                                                  .orderBy('created_time',
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
                                          List<SessionNotesRecord>
                                              textFieldSessionNotesRecordList =
                                              snapshot.data!;
                                          return SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4,
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2,
                                              focusNode:
                                                  _model.textFieldFocusNode2,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController2',
                                                const Duration(milliseconds: 2000),
                                                () async {
                                                  logFirebaseEvent(
                                                      'PATIENT_NOTES_TextField_woquvbje_ON_TEXT');
                                                  logFirebaseEvent(
                                                      'TextField_simple_search');
                                                  safeSetState(() {
                                                    _model.simpleSearchResults2 =
                                                        TextSearch(
                                                      textFieldSessionNotesRecordList
                                                          .map(
                                                            (record) =>
                                                                TextSearchItem
                                                                    .fromTerms(
                                                                        record,
                                                                        [
                                                                  record
                                                                      .rawNote,
                                                                  record
                                                                      .aiSummary]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .textController2
                                                                .text)
                                                            .map(
                                                                (r) => r.object)
                                                            .take(5)
                                                            .toList();
                                                  });
                                                },
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Search Notes',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFFA5A5A5),
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 12.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 14.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 14.0;
                                                            } else {
                                                              return 14.0;
                                                            }
                                                          }(),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFC1C1C1),
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2000.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFC0C0C0),
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2000.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2000.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2000.0),
                                                ),
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(30.0, 22.0,
                                                            30.0, 22.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF646464),
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 14.0;
                                                          } else {
                                                            return 14.0;
                                                          }
                                                        }(),
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PATIENT_NOTES_PAGE_NEW_NOTE_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var sessionNotesRecordReference =
                                              SessionNotesRecord.collection
                                                  .doc();
                                          await sessionNotesRecordReference
                                              .set(createSessionNotesRecordData(
                                            processed: false,
                                            rawNote: '',
                                            createdTime: getCurrentTimestamp,
                                            patientDocument: widget
                                                .patientdocument?.reference,
                                            rawNoteTitle: 'Untitled Note',
                                            user: currentUserReference,
                                          ));
                                          _model.notePassiveParamMobile =
                                              SessionNotesRecord.getDocumentFromData(
                                                  createSessionNotesRecordData(
                                                    processed: false,
                                                    rawNote: '',
                                                    createdTime:
                                                        getCurrentTimestamp,
                                                    patientDocument: widget
                                                        .patientdocument
                                                        ?.reference,
                                                    rawNoteTitle:
                                                        'Untitled Note',
                                                    user: currentUserReference,
                                                  ),
                                                  sessionNotesRecordReference);
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'NoteEditor',
                                            queryParameters: {
                                              'notedocument': serializeParam(
                                                _model.notePassiveParamMobile,
                                                ParamType.Document,
                                              ),
                                              'patientdoc': serializeParam(
                                                widget.patientdocument,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'notedocument':
                                                  _model.notePassiveParamMobile,
                                              'patientdoc':
                                                  widget.patientdocument,
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
                                        text: 'New Note',
                                        icon: const Icon(
                                          Icons.add_sharp,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 60.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFFF1F7FF),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0x9D11215C),
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 12.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 14.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 14.0;
                                                  } else {
                                                    return 14.0;
                                                  }
                                                }(),
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(2000.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        if (_model.textController2.text == '')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<SessionNotesRecord>>(
                                              stream: querySessionNotesRecord(
                                                queryBuilder:
                                                    (sessionNotesRecord) =>
                                                        sessionNotesRecord
                                                            .where(
                                                              'patient_document',
                                                              isEqualTo: widget
                                                                  .patientdocument
                                                                  ?.reference,
                                                            )
                                                            .where(
                                                              'user',
                                                              isEqualTo:
                                                                  currentUserReference,
                                                            )
                                                            .orderBy(
                                                                'created_time',
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
                                                        color:
                                                            Color(0xFFB9DFFF),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<SessionNotesRecord>
                                                    inactiveSearchSessionNotesRecordList =
                                                    snapshot.data!;
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount:
                                                        valueOrDefault<int>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 1;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 2;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 2;
                                                        } else {
                                                          return 2;
                                                        }
                                                      }(),
                                                      2,
                                                    ),
                                                    crossAxisSpacing: 30.0,
                                                    mainAxisSpacing: 30.0,
                                                    childAspectRatio: 0.9,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      inactiveSearchSessionNotesRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      inactiveSearchIndex) {
                                                    final inactiveSearchSessionNotesRecord =
                                                        inactiveSearchSessionNotesRecordList[
                                                            inactiveSearchIndex];
                                                    return InkWell(
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
                                                            'PATIENT_NOTES_Container_7mv66sr7_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'NoteEditor',
                                                          queryParameters: {
                                                            'notedocument':
                                                                serializeParam(
                                                              inactiveSearchSessionNotesRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                            'patientdoc':
                                                                serializeParam(
                                                              widget
                                                                  .patientdocument,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'notedocument':
                                                                inactiveSearchSessionNotesRecord,
                                                            'patientdoc': widget
                                                                .patientdocument,
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
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 20.0,
                                                              color: Color(
                                                                  0xFFF0F0F0),
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
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Frame.svg',
                                                                            width:
                                                                                25.0,
                                                                            height:
                                                                                25.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'AI Generated | ${inactiveSearchSessionNotesRecord.aiNoteTitle}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFFA7A7A7),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PATIENT_NOTES_PAGE_Icon_3zypsl2m_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_bottom_sheet');
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            const Color(0x4C000000),
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: SizedBox(
                                                                                height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                child: NoteoptionsWidget(
                                                                                  patientdocument: widget.patientdocument!,
                                                                                  patientnote: inactiveSearchSessionNotesRecord,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .keyboard_control_sharp,
                                                                      color: Color(
                                                                          0xFF646464),
                                                                      size:
                                                                          20.0,
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
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xE0C9CFDA),
                                                                      width:
                                                                          1.2,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            10.0,
                                                                            15.0,
                                                                            10.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                              'yMd',
                                                                              inactiveSearchSessionNotesRecord.createdTime!),
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
                                                                      ],
                                                                    ),
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
                                                                child: Text(
                                                                  inactiveSearchSessionNotesRecord
                                                                      .rawNoteTitle,
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
                                                                            FontWeight.w300,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                  height: 110.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          inactiveSearchSessionNotesRecord
                                                                              .aiSummary,
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                lineHeight: 1.8,
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
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                    width: 35.0,
                                                                    height:
                                                                        35.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        if (_model.textController2.text != '')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final searchnotes = _model
                                                    .simpleSearchResults2
                                                    .map((e) => e)
                                                    .toList();
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount:
                                                        valueOrDefault<int>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 1;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 2;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 2;
                                                        } else {
                                                          return 2;
                                                        }
                                                      }(),
                                                      2,
                                                    ),
                                                    crossAxisSpacing: 30.0,
                                                    mainAxisSpacing: 30.0,
                                                    childAspectRatio: 0.9,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: searchnotes.length,
                                                  itemBuilder: (context,
                                                      searchnotesIndex) {
                                                    final searchnotesItem =
                                                        searchnotes[
                                                            searchnotesIndex];
                                                    return InkWell(
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
                                                            'PATIENT_NOTES_Container_o3u9u0c4_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'NoteEditor',
                                                          queryParameters: {
                                                            'notedocument':
                                                                serializeParam(
                                                              searchnotesItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                            'patientdoc':
                                                                serializeParam(
                                                              widget
                                                                  .patientdocument,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'notedocument':
                                                                searchnotesItem,
                                                            'patientdoc': widget
                                                                .patientdocument,
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
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 20.0,
                                                              color: Color(
                                                                  0xFFF0F0F0),
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
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Frame.svg',
                                                                            width:
                                                                                25.0,
                                                                            height:
                                                                                25.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'AI Generated | ${searchnotesItem.aiNoteTitle}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFFA7A7A7),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PATIENT_NOTES_PAGE_Icon_tc8bdyoj_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_bottom_sheet');
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            const Color(0x4C000000),
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: SizedBox(
                                                                                height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                child: NoteoptionsWidget(
                                                                                  patientdocument: widget.patientdocument!,
                                                                                  patientnote: searchnotesItem,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .keyboard_control_sharp,
                                                                      color: Color(
                                                                          0xFF646464),
                                                                      size:
                                                                          20.0,
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
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xE0C9CFDA),
                                                                      width:
                                                                          1.2,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            10.0,
                                                                            15.0,
                                                                            10.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                              'yMd',
                                                                              searchnotesItem.createdTime!),
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
                                                                      ],
                                                                    ),
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
                                                                child: Text(
                                                                  searchnotesItem
                                                                      .rawNoteTitle,
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
                                                                            FontWeight.w300,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                  height: 110.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          searchnotesItem
                                                                              .aiSummary,
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                lineHeight: 1.8,
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
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                                    width: 35.0,
                                                                    height:
                                                                        35.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
