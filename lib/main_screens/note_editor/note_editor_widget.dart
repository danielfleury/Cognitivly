import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/birp_note_popup_widget.dart';
import '/components/compliant_treatment_plan_widget.dart';
import '/components/compressed_menu_widget.dart';
import '/components/custom_note_pop_up_widget.dart';
import '/components/psychotherapy_note_popup_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/soap_note_popup_widget.dart';
import '/components/transcribed_audio_note_widget.dart';
import '/components/treatment_plan_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'note_editor_model.dart';
export 'note_editor_model.dart';

class NoteEditorWidget extends StatefulWidget {
  const NoteEditorWidget({
    super.key,
    required this.notedocument,
    required this.patientdoc,
  });

  final SessionNotesRecord? notedocument;
  final PatientDocumentsRecord? patientdoc;

  @override
  _NoteEditorWidgetState createState() => _NoteEditorWidgetState();
}

class _NoteEditorWidgetState extends State<NoteEditorWidget>
    with TickerProviderStateMixin {
  late NoteEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered1 = false;
  var hasRowTriggered1 = false;
  var hasRowTriggered2 = false;
  var hasRowTriggered3 = false;
  var hasRowTriggered4 = false;
  var hasContainerTriggered2 = false;
  var hasRowTriggered5 = false;
  var hasRowTriggered6 = false;
  var hasRowTriggered7 = false;
  var hasRowTriggered8 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 550.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 1190.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 6000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 6000.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 18000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 18000.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 24000.ms,
          duration: 850.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 550.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 1190.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 6000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 6000.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 18000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 18000.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 24000.ms,
          duration: 850.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteEditorModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'NoteEditor'});
    _model.rawnotetitleController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.notedocument?.rawNoteTitle,
      'Untitled Note',
    ));
    _model.rawnotetitleFocusNode ??= FocusNode();

    _model.rawnotewebController ??=
        TextEditingController(text: widget.notedocument?.rawNote);
    _model.rawnotewebFocusNode ??= FocusNode();

    _model.messageinputController ??= TextEditingController();
    _model.messageinputFocusNode ??= FocusNode();

    _model.messageinputfullController ??= TextEditingController();
    _model.messageinputfullFocusNode ??= FocusNode();

    _model.rawnotetitlemobileController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.notedocument?.rawNoteTitle,
      'Untitled Note',
    ));
    _model.rawnotetitlemobileFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.rawnotemobileController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.notedocument?.rawNote,
      'Begin typing your notes here...',
    ));
    _model.rawnotemobileFocusNode ??= FocusNode();

    _model.messageinputmobileController ??= TextEditingController();
    _model.messageinputmobileFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        body: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.compressedMenuModel1,
                      updateCallback: () => setState(() {}),
                      child: const CompressedMenuWidget(),
                    ),
                    Flexible(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 50.0, 20.0, 20.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: SingleChildScrollView(
                                  controller: _model.columnController1,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
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
                                                        'NOTE_EDITOR_PAGE_Image_bsz511kb_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Image_navigate_to');

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
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Left-Arrow-Narrow.svg',
                                                      width: 45.0,
                                                      height: 45.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Editing ${widget.patientdoc?.name}\'s note',
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
                                                                ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.4,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .rawnotetitleController,
                                                          focusNode: _model
                                                              .rawnotetitleFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          30.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: const Color(
                                                                          0xFF81888F),
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xFFD4D4D4),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF666666),
                                                                fontSize: 30.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                          validator: _model
                                                              .rawnotetitleControllerValidator
                                                              .asValidator(
                                                                  context),
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
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  controller:
                                                      _model.columnController2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: () {
                                                            if (FFAppState()
                                                                    .notesfullscreen ==
                                                                false) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.64);
                                                            } else if (FFAppState()
                                                                    .notesfullscreen ==
                                                                true) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.9);
                                                            } else {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.64);
                                                            }
                                                          }(),
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.7,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius:
                                                                    30.0,
                                                                color: Color(
                                                                    0x80D6DCE5),
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
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        20.0,
                                                                        30.0,
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
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              StreamBuilder<SessionNotesRecord>(
                                                                            stream:
                                                                                SessionNotesRecord.getDocument(widget.notedocument!.reference),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final rowSessionNotesRecord = snapshot.data!;
                                                                              return SingleChildScrollView(
                                                                                scrollDirection: Axis.horizontal,
                                                                                controller: _model.rowController1,
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FutureBuilder<List<NoteTemplatesRecord>>(
                                                                                      future: queryNoteTemplatesRecordOnce(
                                                                                        queryBuilder: (noteTemplatesRecord) => noteTemplatesRecord.where(
                                                                                          'user',
                                                                                          isEqualTo: currentUserReference,
                                                                                        ),
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
                                                                                        List<NoteTemplatesRecord> rowNoteTemplatesRecordList = snapshot.data!;
                                                                                        return SingleChildScrollView(
                                                                                          scrollDirection: Axis.horizontal,
                                                                                          controller: _model.rowController2,
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: List.generate(rowNoteTemplatesRecordList.length, (rowIndex) {
                                                                                              final rowNoteTemplatesRecord = rowNoteTemplatesRecordList[rowIndex];
                                                                                              return Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    if (!rowNoteTemplatesRecord.sessionNotes.contains(widget.notedocument?.reference))
                                                                                                      FFButtonWidget(
                                                                                                        onPressed: () async {
                                                                                                          logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                          if (_model.rawnotewebController.text != '') {
                                                                                                            logFirebaseEvent('Button_backend_call');
                                                                                                            _model.redactionactionoutmincustom = await PangeaRedactCall.call(
                                                                                                              rawText: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                                            );
                                                                                                            logFirebaseEvent('Button_backend_call');

                                                                                                            await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                              rawNote: PangeaRedactCall.redactionresult(
                                                                                                                (_model.redactionactionoutmincustom?.jsonBody ?? ''),
                                                                                                              ).toString(),
                                                                                                            ));
                                                                                                            logFirebaseEvent('Button_backend_call');
                                                                                                            _model.customNoteGeneration = await CustomNoteGenerationCall.call(
                                                                                                              example: functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(rowNoteTemplatesRecord.templateExample)),
                                                                                                              description: functions.replaceDoubleQuotesLines(functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(rowNoteTemplatesRecord.templateDescription))),
                                                                                                              therapynote: functions.replaceDoubleQuotesLines(functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(PangeaRedactCall.redactionresult(
                                                                                                                (_model.redactionactionoutmincustom?.jsonBody ?? ''),
                                                                                                              ).toString()))),
                                                                                                            );
                                                                                                            logFirebaseEvent('Button_backend_call');

                                                                                                            await CustomNoteGenerationsRecord.collection.doc().set(createCustomNoteGenerationsRecordData(
                                                                                                                  sessionNote: widget.notedocument?.reference,
                                                                                                                  noteTemplate: rowNoteTemplatesRecord.reference,
                                                                                                                  generatedNote: CustomNoteGenerationCall.psychotherapynote(
                                                                                                                    (_model.customNoteGeneration?.jsonBody ?? ''),
                                                                                                                  ),
                                                                                                                ));
                                                                                                            logFirebaseEvent('Button_backend_call');

                                                                                                            await rowNoteTemplatesRecord.reference.update({
                                                                                                              ...mapToFirestore(
                                                                                                                {
                                                                                                                  'session_notes': FieldValue.arrayUnion([widget.notedocument?.reference]),
                                                                                                                },
                                                                                                              ),
                                                                                                            });
                                                                                                            logFirebaseEvent('Button_bottom_sheet');
                                                                                                            await showModalBottomSheet(
                                                                                                              isScrollControlled: true,
                                                                                                              backgroundColor: Colors.transparent,
                                                                                                              enableDrag: false,
                                                                                                              context: context,
                                                                                                              builder: (context) {
                                                                                                                return GestureDetector(
                                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                                  child: Padding(
                                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                                    child: SizedBox(
                                                                                                                      height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                                      child: CustomNotePopUpWidget(
                                                                                                                        sessiondocument: rowSessionNotesRecord,
                                                                                                                        notetemplate: rowNoteTemplatesRecord,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                                                  context: context,
                                                                                                                  builder: (alertDialogContext) {
                                                                                                                    return AlertDialog(
                                                                                                                      title: const Text('Note is Empty'),
                                                                                                                      content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                                                      actions: [
                                                                                                                        TextButton(
                                                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                          child: const Text('Cancel'),
                                                                                                                        ),
                                                                                                                        TextButton(
                                                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                          child: const Text('Okay'),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    );
                                                                                                                  },
                                                                                                                ) ??
                                                                                                                false;
                                                                                                          }

                                                                                                          setState(() {});
                                                                                                        },
                                                                                                        text: rowNoteTemplatesRecord.templateTitle,
                                                                                                        icon: const Icon(
                                                                                                          Icons.grain,
                                                                                                          size: 15.0,
                                                                                                        ),
                                                                                                        options: FFButtonOptions(
                                                                                                          height: 50.0,
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                          color: Colors.white,
                                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                color: const Color(0xFF828697),
                                                                                                                fontSize: 12.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                              ),
                                                                                                          elevation: 0.0,
                                                                                                          borderSide: const BorderSide(
                                                                                                            color: Color(0xFFD6DDE9),
                                                                                                            width: 1.5,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                    if (rowNoteTemplatesRecord.sessionNotes.contains(widget.notedocument?.reference))
                                                                                                      FFButtonWidget(
                                                                                                        onPressed: () async {
                                                                                                          logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                          logFirebaseEvent('Button_bottom_sheet');
                                                                                                          await showModalBottomSheet(
                                                                                                            isScrollControlled: true,
                                                                                                            backgroundColor: Colors.transparent,
                                                                                                            enableDrag: false,
                                                                                                            context: context,
                                                                                                            builder: (context) {
                                                                                                              return GestureDetector(
                                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                                child: Padding(
                                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                                  child: SizedBox(
                                                                                                                    height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                                    child: CustomNotePopUpWidget(
                                                                                                                      sessiondocument: rowSessionNotesRecord,
                                                                                                                      notetemplate: rowNoteTemplatesRecord,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          ).then((value) => safeSetState(() {}));
                                                                                                        },
                                                                                                        text: rowNoteTemplatesRecord.templateTitle,
                                                                                                        icon: const Icon(
                                                                                                          Icons.remove_red_eye_outlined,
                                                                                                          size: 15.0,
                                                                                                        ),
                                                                                                        options: FFButtonOptions(
                                                                                                          height: 50.0,
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                          color: Colors.white,
                                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                color: const Color(0xFF828697),
                                                                                                                fontSize: 12.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                              ),
                                                                                                          elevation: 0.0,
                                                                                                          borderSide: const BorderSide(
                                                                                                            color: Color(0xFFD6DDE9),
                                                                                                            width: 1.5,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                  ],
                                                                                                ),
                                                                                              );
                                                                                            }),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                    Stack(
                                                                                      children: [
                                                                                        if (rowSessionNotesRecord.treatmentPlan == '')
                                                                                          FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('NOTE_EDITOR_TREATMENT_PLAN_BTN_ON_TAP');
                                                                                              if (_model.rawnotewebController.text != '') {
                                                                                                logFirebaseEvent('Button_backend_call');
                                                                                                _model.redactionactionouttreatmentmin = await PangeaRedactCall.call(
                                                                                                  rawText: functions.replaceDoubleQuotesLines(functions.replaceDoubleQuotesLines(_model.rawnotewebController.text)),
                                                                                                );
                                                                                                logFirebaseEvent('Button_backend_call');

                                                                                                await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                  rawNote: PangeaRedactCall.redactionresult(
                                                                                                    (_model.redactionactionouttreatmentmin?.jsonBody ?? ''),
                                                                                                  ).toString(),
                                                                                                ));
                                                                                                logFirebaseEvent('Button_backend_call');
                                                                                                _model.treatmentPlanMin = await TreatmentPlanCall.call(
                                                                                                  therapynote: functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(PangeaRedactCall.redactionresult(
                                                                                                    (_model.redactionactionouttreatmentmin?.jsonBody ?? ''),
                                                                                                  ).toString())),
                                                                                                  example: 'Current/Presenting Issues: John is currently experiencing anxiety (racing thoughts, restlessness, difficulty sleeping) that prevents him from maintaining consistent employment. His anxiety increased after the COVID pandemic and lockdown, but states he has always been “high strung.” He states that he suffers from “Sunday Scaries” which can turn into an anxiety attack. He estimates he has “a few” anxiety attacks per year. John reports that he is unable to stay at a job for more than six months due to his anxiety, and when employed, cannot “unplug” from work to fully enjoy his free time. Treatment History (Summary): Client has seen Psychiatrist, Janet Doe every six weeks since 8/1/2022 for symptom management. Client does not have a PCP. What Interventions/Strategies have Helped Most: Client reports that Ativan and Buspiron are helpful in managing Anxiety Symptoms but wants to avoid relying on it. Client is interested in evaluating thought patterns that lead to “downward spiral” (sic) and has practiced 5-5-5 “grounding exercises” suggested by psychiatrist. Current Meds/Prescribed By (if applicable): Ativan, 5 Mg / as needed for anxiety by Janet Doe, MD (Psychiatrist), Buspirone 5mg / day for anxiety Recommended Services: Assessment, Individual Therapy, Medication management Goal #1: Target Date (120 Days or 15 visits): The patient will learn to cope with feelings of anxiety, without withdrawing and having to remove himself from work obligations. Objective: Decreased incidence of anxiety interfering in work per client’s reportModality: Practice ACT skills to handle work experiences without unmanageable anxiety : Goal #1 Date: 3 months Goal #2: Decrease catastrophic thinking and negative outcomes associated with negative thinking in order to increase positive social interactions Action step/Objective B: Cognitive training exercises to evaluate thought patterns to change interactions in social and work environments. Intervention Methods/Modalities: ACT and Cognitive therapy Goal #2 Date: 3 months',
                                                                                                );
                                                                                                logFirebaseEvent('Button_backend_call');

                                                                                                await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                  treatmentPlan: TreatmentPlanCall.treatmentplan(
                                                                                                    (_model.treatmentPlanMin?.jsonBody ?? ''),
                                                                                                  ),
                                                                                                ));
                                                                                                logFirebaseEvent('Button_bottom_sheet');
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: const Color(0x33000000),
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: SizedBox(
                                                                                                          height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                          child: TreatmentPlanWidget(
                                                                                                            sessiondocument: rowSessionNotesRecord,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              } else {
                                                                                                logFirebaseEvent('Button_alert_dialog');
                                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                                      context: context,
                                                                                                      builder: (alertDialogContext) {
                                                                                                        return AlertDialog(
                                                                                                          title: const Text('Note is Empty'),
                                                                                                          content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                                          actions: [
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                              child: const Text('Cancel'),
                                                                                                            ),
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                              child: const Text('Okay'),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ) ??
                                                                                                    false;
                                                                                              }

                                                                                              setState(() {});
                                                                                            },
                                                                                            text: 'Treatment Plan',
                                                                                            icon: const Icon(
                                                                                              Icons.grain,
                                                                                              size: 15.0,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              height: 50.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: Colors.white,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF828697),
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                  ),
                                                                                              elevation: 0.0,
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0xFFD6DDE9),
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                                            ),
                                                                                          ),
                                                                                        if (rowSessionNotesRecord.treatmentPlan != '')
                                                                                          FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('NOTE_EDITOR_TREATMENT_PLAN_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: const Color(0x33000000),
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        child: TreatmentPlanWidget(
                                                                                                          sessiondocument: rowSessionNotesRecord,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            text: 'Treatment Plan',
                                                                                            icon: const Icon(
                                                                                              Icons.remove_red_eye_outlined,
                                                                                              size: 15.0,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              height: 50.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: Colors.white,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF828697),
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                  ),
                                                                                              elevation: 0.0,
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0xFFD6DDE9),
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          if (rowSessionNotesRecord.aiPsychotherapyNote == '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                if (_model.rawnotewebController.text != '') {
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.redactionactionoutminpsychotherapy = await PangeaRedactCall.call(
                                                                                                    rawText: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    rawNote: PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminpsychotherapy?.jsonBody ?? ''),
                                                                                                    ).toString(),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.psychoTherapyNote = await PsychotherapyNoteCall.call(
                                                                                                    therapynote: functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminpsychotherapy?.jsonBody ?? ''),
                                                                                                    ).toString()),
                                                                                                    modalities: valueOrDefault(currentUserDocument?.modalities, ''),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    aiPsychotherapyNote: PsychotherapyNoteCall.psychotherapynote(
                                                                                                      (_model.psychoTherapyNote?.jsonBody ?? ''),
                                                                                                    ),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: PsychotherapyNotePopupWidget(
                                                                                                              sessiondocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                } else {
                                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Note is Empty'),
                                                                                                            content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Okay'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                }

                                                                                                setState(() {});
                                                                                              },
                                                                                              text: 'Psychotherapy Note',
                                                                                              icon: const Icon(
                                                                                                Icons.grain,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                          if (rowSessionNotesRecord.aiPsychotherapyNote != '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                logFirebaseEvent('Button_bottom_sheet');
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: SizedBox(
                                                                                                          height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                          child: PsychotherapyNotePopupWidget(
                                                                                                            sessiondocument: widget.notedocument!,
                                                                                                            patientdoc: widget.patientdoc!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              text: 'Psychotherapy Note',
                                                                                              icon: const Icon(
                                                                                                Icons.remove_red_eye_outlined,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          if (rowSessionNotesRecord.aiSoapNote == '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_S_O_A_P_NOTE_BTN_ON_TAP');
                                                                                                if (_model.rawnotewebController.text != '') {
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.redactionactionoutminsoap = await PangeaRedactCall.call(
                                                                                                    rawText: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    rawNote: PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminsoap?.jsonBody ?? ''),
                                                                                                    ).toString(),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.sOAPNote = await SOAPNoteCall.call(
                                                                                                    therapynote: functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminsoap?.jsonBody ?? ''),
                                                                                                    ).toString()),
                                                                                                    modalities: valueOrDefault(currentUserDocument?.modalities, ''),
                                                                                                    stylepreference: functions.stringListtoString((currentUserDocument?.preferredNoteStyles.toList() ?? []).toList()),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    aiSoapNote: SOAPNoteCall.soapnote(
                                                                                                      (_model.sOAPNote?.jsonBody ?? ''),
                                                                                                    ),
                                                                                                    generalFeedback: functions.stringListtoString((currentUserDocument?.preferredNoteStyles.toList() ?? []).toList()),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: SoapNotePopupWidget(
                                                                                                              sessiondocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                } else {
                                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Note is Empty'),
                                                                                                            content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Okay'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                }

                                                                                                setState(() {});
                                                                                              },
                                                                                              text: 'SOAP Note',
                                                                                              icon: const Icon(
                                                                                                Icons.grain,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                          if (rowSessionNotesRecord.aiSoapNote != '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_S_O_A_P_NOTE_BTN_ON_TAP');
                                                                                                logFirebaseEvent('Button_bottom_sheet');
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: SizedBox(
                                                                                                          height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                          child: SoapNotePopupWidget(
                                                                                                            sessiondocument: widget.notedocument!,
                                                                                                            patientdoc: widget.patientdoc!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              text: 'SOAP Note',
                                                                                              icon: const Icon(
                                                                                                Icons.remove_red_eye_outlined,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          if (rowSessionNotesRecord.aiBirpNote == '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_B_I_R_P_NOTE_BTN_ON_TAP');
                                                                                                if (_model.rawnotewebController.text != '') {
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.redactionactionoutminbirp = await PangeaRedactCall.call(
                                                                                                    rawText: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    rawNote: PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminbirp?.jsonBody ?? ''),
                                                                                                    ).toString(),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.bIRPNote = await BIRPNoteCall.call(
                                                                                                    therapynote: functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutminbirp?.jsonBody ?? ''),
                                                                                                    ).toString()),
                                                                                                    modalities: valueOrDefault(currentUserDocument?.modalities, ''),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    aiBirpNote: BIRPNoteCall.birpnote(
                                                                                                      (_model.bIRPNote?.jsonBody ?? ''),
                                                                                                    ),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: BirpNotePopupWidget(
                                                                                                              sessiondocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                } else {
                                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Note is Empty'),
                                                                                                            content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Okay'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                }

                                                                                                setState(() {});
                                                                                              },
                                                                                              text: 'BIRP Note',
                                                                                              icon: const Icon(
                                                                                                Icons.grain,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                          if (rowSessionNotesRecord.aiBirpNote != '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_B_I_R_P_NOTE_BTN_ON_TAP');
                                                                                                logFirebaseEvent('Button_bottom_sheet');
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: SizedBox(
                                                                                                          height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                          child: BirpNotePopupWidget(
                                                                                                            sessiondocument: widget.notedocument!,
                                                                                                            patientdoc: widget.patientdoc!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              text: 'BIRP Note',
                                                                                              icon: const Icon(
                                                                                                Icons.remove_red_eye_outlined,
                                                                                                size: 15.0,
                                                                                              ),
                                                                                              options: FFButtonOptions(
                                                                                                height: 50.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: Colors.white,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF828697),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 0.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFD6DDE9),
                                                                                                  width: 1.5,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
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
                                                                            'NOTE_EDITOR_PAGE_Image_4k1gatlv_ON_TAP');
                                                                        if (FFAppState()
                                                                            .notesfullscreen) {
                                                                          logFirebaseEvent(
                                                                              'Image_update_app_state');
                                                                          setState(
                                                                              () {
                                                                            FFAppState().notesfullscreen =
                                                                                false;
                                                                          });
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Image_update_app_state');
                                                                          setState(
                                                                              () {
                                                                            FFAppState().notesfullscreen =
                                                                                true;
                                                                          });
                                                                        }
                                                                      },
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/images/fullscreen-icon.svg',
                                                                          width:
                                                                              25.0,
                                                                          height:
                                                                              25.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
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
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        child: custom_widgets
                                                                            .SoundRecordAndPlay(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          notedocument:
                                                                              widget.notedocument,
                                                                        ),
                                                                      ),
                                                                      StreamBuilder<
                                                                          SessionNotesRecord>(
                                                                        stream: SessionNotesRecord.getDocument(widget
                                                                            .notedocument!
                                                                            .reference),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          final containerSessionNotesRecord =
                                                                              snapshot.data!;
                                                                          return Container(
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Colors.white,
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (FFAppState().processingaudio == true)
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Lottie.asset(
                                                                                        'assets/lottie_animations/animation_llcyw2a9.json',
                                                                                        width: 40.0,
                                                                                        height: 40.0,
                                                                                        fit: BoxFit.cover,
                                                                                        animate: true,
                                                                                      ),
                                                                                      Text(
                                                                                        'Transcribing Audio',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF969696),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                if (containerSessionNotesRecord.transcribed == true)
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 50.0,
                                                                                          height: 2.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: const Color(0xFFC7C7C7),
                                                                                            borderRadius: BorderRadius.circular(2000.0),
                                                                                          ),
                                                                                        ),
                                                                                        const Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 3.0),
                                                                                          child: Icon(
                                                                                            Icons.check_outlined,
                                                                                            color: Color(0xFFA5A5A5),
                                                                                            size: 18.0,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('NOTE_EDITOR_VIEW_TRANSCRIPT_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        child: TranscribedAudioNoteWidget(
                                                                                                          notedocument: widget.notedocument!,
                                                                                                          patientdoc: widget.patientdoc!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            text: 'View Transcript',
                                                                                            icon: const Icon(
                                                                                              Icons.short_text_outlined,
                                                                                              size: 15.0,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              height: 40.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: Colors.white,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF6E6E6E),
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                  ),
                                                                                              elevation: 0.0,
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0xFFB9B9B9),
                                                                                                width: 1.3,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(200.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.rawnotewebController,
                                                                        focusNode:
                                                                            _model.rawnotewebFocusNode,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF7D7D7D),
                                                                                fontSize: 16.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                              ),
                                                                          hintText:
                                                                              'Begin typing your note here...',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF818181),
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                              ),
                                                                          enabledBorder:
                                                                              InputBorder.none,
                                                                          focusedBorder:
                                                                              InputBorder.none,
                                                                          errorBorder:
                                                                              InputBorder.none,
                                                                          focusedErrorBorder:
                                                                              InputBorder.none,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF646464),
                                                                              fontSize: 14.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              lineHeight: 1.8,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            20,
                                                                        validator: _model
                                                                            .rawnotewebControllerValidator
                                                                            .asValidator(context),
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
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'NOTE_EDITOR_PAGE_SAVE_BTN_ON_TAP');
                                                                if (_model.rawnotewebController
                                                                            .text !=
                                                                        '') {
                                                                  if (_model
                                                                      .switchValue!) {
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .notestep1processing =
                                                                          true;
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'containerOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasContainerTriggered1 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['containerOnActionTriggerAnimation1']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered1 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation1']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered2 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation2']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation3'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered3 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation3']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation4'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered4 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation4']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.redactionactionout =
                                                                        await PangeaRedactCall
                                                                            .call(
                                                                      rawText: functions.replaceDoubleQuotesLines(_model
                                                                          .rawnotewebController
                                                                          .text),
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.notesSummaryFast =
                                                                        await NotesSummaryCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionout?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                      model:
                                                                          'gpt-3.5-turbo-16k',
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.noteHypothesesFast =
                                                                        await NoteHypothesesCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionout?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                      model:
                                                                          'gpt-3.5-turbo-16k',
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.noteTitleFast =
                                                                        await NotesTitleCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionout?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await widget
                                                                        .notedocument!
                                                                        .reference
                                                                        .update(
                                                                            createSessionNotesRecordData(
                                                                      rawNote:
                                                                          PangeaRedactCall
                                                                              .redactionresult(
                                                                        (_model.redactionactionout?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      aiSummary:
                                                                          NotesSummaryCall
                                                                              .notessummary(
                                                                        (_model.notesSummaryFast?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      processed:
                                                                          true,
                                                                      rawNoteTitle: _model
                                                                          .rawnotetitleController
                                                                          .text,
                                                                      aiDiagnostics:
                                                                          NoteHypothesesCall
                                                                              .noteshypotheses(
                                                                        (_model.noteHypothesesFast?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      aiNoteTitle:
                                                                          NotesTitleCall
                                                                              .notestitle(
                                                                        (_model.noteTitleFast?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      patientDocument: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await widget
                                                                        .patientdoc!
                                                                        .reference
                                                                        .update(
                                                                            createPatientDocumentsRecordData(
                                                                      lastupdated:
                                                                          getCurrentTimestamp,
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .notestep1processing =
                                                                          false;
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'PatientNotes',
                                                                      queryParameters:
                                                                          {
                                                                        'patientdocument':
                                                                            serializeParam(
                                                                          widget
                                                                              .patientdoc,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        'patientdocument':
                                                                            widget.patientdoc,
                                                                        kTransitionInfoKey:
                                                                            const TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .notestep1processing =
                                                                          true;
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'containerOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasContainerTriggered1 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['containerOnActionTriggerAnimation1']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered1 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation1']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered2 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation2']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation3'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered3 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation3']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_widget_animation');
                                                                    if (animationsMap[
                                                                            'rowOnActionTriggerAnimation4'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasRowTriggered4 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['rowOnActionTriggerAnimation4']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.redactionactionoutslow =
                                                                        await PangeaRedactCall
                                                                            .call(
                                                                      rawText: functions.replaceDoubleQuotesLines(_model
                                                                          .rawnotewebController
                                                                          .text),
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.notesSummary =
                                                                        await NotesSummaryCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionoutslow?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                      model:
                                                                          'gpt-4',
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.noteHypotheses =
                                                                        await NoteHypothesesCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionoutslow?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                      model:
                                                                          'gpt-4',
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.noteTitle =
                                                                        await NotesTitleCall
                                                                            .call(
                                                                      therapynote:
                                                                          functions
                                                                              .replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                        (_model.redactionactionoutslow?.jsonBody ??
                                                                            ''),
                                                                      ).toString()),
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await widget
                                                                        .notedocument!
                                                                        .reference
                                                                        .update(
                                                                            createSessionNotesRecordData(
                                                                      rawNote:
                                                                          PangeaRedactCall
                                                                              .redactionresult(
                                                                        (_model.redactionactionoutslow?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      aiSummary:
                                                                          NotesSummaryCall
                                                                              .notessummary(
                                                                        (_model.notesSummary?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      processed:
                                                                          true,
                                                                      rawNoteTitle: _model
                                                                          .rawnotetitleController
                                                                          .text,
                                                                      aiDiagnostics:
                                                                          NoteHypothesesCall
                                                                              .noteshypotheses(
                                                                        (_model.noteHypotheses?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      aiNoteTitle:
                                                                          NotesTitleCall
                                                                              .notestitle(
                                                                        (_model.noteTitle?.jsonBody ??
                                                                            ''),
                                                                      ).toString(),
                                                                      patientDocument: widget
                                                                          .patientdoc
                                                                          ?.reference,
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await widget
                                                                        .patientdoc!
                                                                        .reference
                                                                        .update(
                                                                            createPatientDocumentsRecordData(
                                                                      lastupdated:
                                                                          getCurrentTimestamp,
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .notestep1processing =
                                                                          false;
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'PatientNotes',
                                                                      queryParameters:
                                                                          {
                                                                        'patientdocument':
                                                                            serializeParam(
                                                                          widget
                                                                              .patientdoc,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        'patientdocument':
                                                                            widget.patientdoc,
                                                                        kTransitionInfoKey:
                                                                            const TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  }
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
                                                                                title: const Text('Note is Empty'),
                                                                                content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: const Text('Cancel'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: const Text('Okay'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                }

                                                                setState(() {});
                                                              },
                                                              text: 'Save',
                                                              icon: const Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            30.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFFECF5FF),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xA11E3A7F),
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
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
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
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: const EdgeInsets.all(4.0),
                                                                        child: Text(
                                                                          'When activated, analysis processes faster with a tradeoff in accuracy',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF4E4E4E),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .right,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        1.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child: Switch
                                                                        .adaptive(
                                                                      value: _model
                                                                              .switchValue ??=
                                                                          false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        setState(() =>
                                                                            _model.switchValue =
                                                                                newValue);
                                                                      },
                                                                      activeColor:
                                                                          const Color(
                                                                              0xFF2E2E31),
                                                                      activeTrackColor:
                                                                          const Color(
                                                                              0xFFB2B2B2),
                                                                      inactiveTrackColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      inactiveThumbColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                  ),
                                                                  Stack(
                                                                    children: [
                                                                      if (_model
                                                                              .switchValue ==
                                                                          true)
                                                                        Icon(
                                                                          Icons
                                                                              .bolt_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              22.0,
                                                                        ),
                                                                      if (_model
                                                                              .switchValue ==
                                                                          false)
                                                                        Icon(
                                                                          Icons
                                                                              .short_text_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              22.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  controller:
                                                      _model.columnController3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'NOTE_EDITOR_VIEW_PATIENT_PROFILE_BTN_ON_');
                                                          if (widget.patientdoc!
                                                              .profileGeneration) {
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                              'PatientDashboardProfile',
                                                              queryParameters: {
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
                                                                              const Text('Smart Profile Not Yet Generated'),
                                                                          content:
                                                                              const Text('You have not generated a profile for this patient. Would you like to create a smart profile?'),
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
                                                                  'Button_navigate_to');

                                                              context.pushNamed(
                                                                'PatientProfiles',
                                                                extra: <String,
                                                                    dynamic>{
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
                                                                  'Button_close_dialog,_drawer,_etc');
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          }
                                                        },
                                                        text:
                                                            'View Patient Profile',
                                                        icon: const Icon(
                                                          Icons.electric_bolt,
                                                          size: 16.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 60.0,
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
                                                                0xFFCED3DC),
                                                            width: 1.5,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
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
                                                        child: StreamBuilder<
                                                            SessionNotesRecord>(
                                                          stream: SessionNotesRecord
                                                              .getDocument(widget
                                                                  .notedocument!
                                                                  .reference),
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
                                                            final containerSessionNotesRecord =
                                                                snapshot.data!;
                                                            return Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.25,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        20.0,
                                                                    color: Color(
                                                                        0x9EE0E3E9),
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
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            30.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Generate Compliant Treatment Plan',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                const Color(0xFF646464),
                                                                            fontSize:
                                                                                18.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Instantly restructure this note into an insurance-compliant treatment plan',
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
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          if (containerSessionNotesRecord.compliantTreatmentPlan == '')
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_GENERATE_BTN_ON_TAP');
                                                                                var shouldSetState = false;
                                                                                if (_model.rawnotewebController.text != '') {
                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                  _model.redactedcompliance = await PangeaRedactCall.call(
                                                                                    rawText: _model.rawnotewebController.text,
                                                                                  );
                                                                                  shouldSetState = true;
                                                                                  if ((_model.redactedcompliance?.succeeded ?? true)) {
                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                    _model.compliantplan = await CompliantTreatmentPlanCall.call(
                                                                                      model: 'gpt-3.5-turbo-16k',
                                                                                      therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                        (_model.redactedcompliance?.jsonBody ?? ''),
                                                                                      ).toString())),
                                                                                    );
                                                                                    shouldSetState = true;
                                                                                    if ((_model.compliantplan?.succeeded ?? true)) {
                                                                                      logFirebaseEvent('Button_backend_call');

                                                                                      await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                        compliantTreatmentPlan: CompliantTreatmentPlanCall.compliantplan(
                                                                                          (_model.compliantplan?.jsonBody ?? ''),
                                                                                        ),
                                                                                      ));
                                                                                      logFirebaseEvent('Button_bottom_sheet');
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: SizedBox(
                                                                                                height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                child: CompliantTreatmentPlanWidget(
                                                                                                  sessiondocument: widget.notedocument!,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    } else {
                                                                                      if (shouldSetState) setState(() {});
                                                                                      return;
                                                                                    }
                                                                                  } else {
                                                                                    if (shouldSetState) setState(() {});
                                                                                    return;
                                                                                  }
                                                                                } else {
                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: const Text('Note is Empty'),
                                                                                            content: const Text('Please type at least one paragraph of information about this session to begin generating documentation'),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                child: const Text('Cancel'),
                                                                                              ),
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                child: const Text('Okay'),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ) ??
                                                                                      false;
                                                                                }

                                                                                if (shouldSetState) setState(() {});
                                                                              },
                                                                              text: 'Generate',
                                                                              icon: const Icon(
                                                                                Icons.arrow_right_alt_rounded,
                                                                                color: Color(0xFF686868),
                                                                                size: 15.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Colors.white,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF646464),
                                                                                      fontSize: 12.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xBACDD0DF),
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          if (containerSessionNotesRecord.compliantTreatmentPlan != '')
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('NOTE_EDITOR_PAGE_VIEW_PLAN_BTN_ON_TAP');
                                                                                logFirebaseEvent('Button_bottom_sheet');
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: SizedBox(
                                                                                          height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                          child: CompliantTreatmentPlanWidget(
                                                                                            sessiondocument: containerSessionNotesRecord,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              text: 'View Plan',
                                                                              icon: const Icon(
                                                                                Icons.done,
                                                                                color: Color(0xFF686868),
                                                                                size: 15.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Colors.white,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF646464),
                                                                                      fontSize: 12.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xBACDD0DF),
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              FlutterFlowChoiceChips(
                                                                options: const [
                                                                  ChipData(
                                                                      'Insights',
                                                                      Icons
                                                                          .insights_sharp),
                                                                  ChipData(
                                                                      'Chat',
                                                                      Icons
                                                                          .chat_bubble)
                                                                ],
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.choiceChipsValue1 =
                                                                            val?.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF6B6B6B),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  iconSize:
                                                                      18.0,
                                                                  labelPadding:
                                                                      const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          5.0),
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      const Color(
                                                                          0xFF999999),
                                                                  borderWidth:
                                                                      1.2,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10000.0),
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF6B6B6B),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  iconSize:
                                                                      16.0,
                                                                  labelPadding:
                                                                      const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          5.0),
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      const Color(
                                                                          0xFFD8D8D8),
                                                                  borderWidth:
                                                                      1.2,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10000.0),
                                                                ),
                                                                chipSpacing:
                                                                    20.0,
                                                                rowSpacing:
                                                                    12.0,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    _model.choiceChipsValue1 !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                controller: _model
                                                                        .choiceChipsValueController1 ??=
                                                                    FormFieldController<
                                                                        List<
                                                                            String>>(
                                                                  ['Insights'],
                                                                ),
                                                                wrapped: true,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Stack(
                                                        children: [
                                                          if (_model
                                                                  .choiceChipsValue1 ==
                                                              'Insights')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (widget
                                                                          .notedocument
                                                                          ?.processed ==
                                                                      true)
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.24,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.35,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                30.0,
                                                                            color:
                                                                                Color(0x80D6DCE5),
                                                                            offset:
                                                                                Offset(0.0, 2.0),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(30.0),
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          controller:
                                                                              _model.columnController4,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Intelligent Summary',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF707070),
                                                                                          fontSize: 18.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('NOTE_EDITOR_PAGE_CopySummary_ON_TAP');
                                                                                      logFirebaseEvent('CopySummary_copy_to_clipboard');
                                                                                      await Clipboard.setData(ClipboardData(text: widget.notedocument!.aiSummary));
                                                                                      logFirebaseEvent('CopySummary_show_snack_bar');
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Copied to Clipboard',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Manrope',
                                                                                              color: const Color(0xFFF0F0F0),
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: const Color(0xFF454545),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                    child: const Icon(
                                                                                      Icons.content_copy_outlined,
                                                                                      color: Color(0xFF868686),
                                                                                      size: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'High-level details captured from your notes',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFFA3A3A3),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                child: SelectionArea(
                                                                                    child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    widget.notedocument?.aiSummary,
                                                                                    'No AI summary generated yet',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF979797),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        lineHeight: 2.0,
                                                                                      ),
                                                                                )),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (widget
                                                                          .notedocument
                                                                          ?.processed ==
                                                                      true)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.24,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.35,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 30.0,
                                                                              color: Color(0x80D6DCE5),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(30.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            controller:
                                                                                _model.columnController5,
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Hypotheses',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF707070),
                                                                                            fontSize: 18.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                    InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('NOTE_EDITOR_PAGE_CopyHypotheses_ON_TAP');
                                                                                        logFirebaseEvent('CopyHypotheses_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: widget.notedocument!.aiDiagnostics));
                                                                                        logFirebaseEvent('CopyHypotheses_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Copied to Clipboard',
                                                                                              style: GoogleFonts.getFont(
                                                                                                'Manrope',
                                                                                                color: const Color(0xFFF0F0F0),
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                            ),
                                                                                            duration: const Duration(milliseconds: 4000),
                                                                                            backgroundColor: const Color(0xFF454545),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: const Icon(
                                                                                        Icons.content_copy_outlined,
                                                                                        color: Color(0xFF868686),
                                                                                        size: 16.0,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Potential diagnoses to consider.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFFA3A3A3),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    widget.notedocument!.aiDiagnostics,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF979797),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          lineHeight: 2.0,
                                                                                        ),
                                                                                  )),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (widget
                                                                          .notedocument
                                                                          ?.processed ==
                                                                      false)
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.24,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                30.0,
                                                                            color:
                                                                                Color(0x80D6DCE5),
                                                                            offset:
                                                                                Offset(0.0, 2.0),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(30.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Intelligent Summary',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF707070),
                                                                                        fontSize: 18.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'An AI-generated summary of this note will be created below once you save this document.',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFFA3A3A3),
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.asset(
                                                                                  'assets/images/3d-construction-abstract-vivid-composition-with-head-silhouette-1_(1).png',
                                                                                  width: 300.0,
                                                                                  height: 200.0,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (widget
                                                                          .notedocument
                                                                          ?.processed ==
                                                                      false)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.24,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 30.0,
                                                                              color: Color(0x80D6DCE5),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(30.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Diagnostic Hypotheses',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF707070),
                                                                                          fontSize: 18.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'AI generated diagnostic hypotheses will be shown here once this document is processe .',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFFA3A3A3),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/3d-construction-made-of-glass-abstract-geometrical-composition.png',
                                                                                    width: 300.0,
                                                                                    height: 200.0,
                                                                                    fit: BoxFit.contain,
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
                                                          if (_model
                                                                  .choiceChipsValue1 ==
                                                              'Chat')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.24,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              30.0,
                                                                          color:
                                                                              Color(0x80D6DCE5),
                                                                          offset: Offset(
                                                                              0.0,
                                                                              2.0),
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
                                                                              30.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/images/chat-icon.svg',
                                                                                          width: 20.0,
                                                                                          height: 20.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Chat with this Note',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF707070),
                                                                                                fontSize: 16.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('NOTE_EDITOR_PAGE_Image_2i9zgw89_ON_TAP');
                                                                                  logFirebaseEvent('Image_update_app_state');
                                                                                  setState(() {
                                                                                    FFAppState().chatfullscreen = true;
                                                                                  });
                                                                                },
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/full-details-ic.svg',
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Your personal assistant in generating clinical insights, hypotheses, and facts',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFFA3A3A3),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxHeight: MediaQuery.sizeOf(context).height * 0.35,
                                                                            ),
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Colors.white,
                                                                            ),
                                                                            child:
                                                                                StreamBuilder<List<NoteMessagesRecord>>(
                                                                              stream: queryNoteMessagesRecord(
                                                                                queryBuilder: (noteMessagesRecord) => noteMessagesRecord
                                                                                    .where(
                                                                                      'session_note',
                                                                                      isEqualTo: widget.notedocument?.reference,
                                                                                    )
                                                                                    .orderBy('date'),
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
                                                                                List<NoteMessagesRecord> listViewNoteMessagesRecordList = snapshot.data!;
                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: listViewNoteMessagesRecordList.length,
                                                                                  itemBuilder: (context, listViewIndex) {
                                                                                    final listViewNoteMessagesRecord = listViewNoteMessagesRecordList[listViewIndex];
                                                                                    return Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.18,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  image: DecorationImage(
                                                                                                    fit: BoxFit.cover,
                                                                                                    image: Image.asset(
                                                                                                      'assets/images/gradient-blue_1.png',
                                                                                                    ).image,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                  border: Border.all(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsets.all(15.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        listViewNoteMessagesRecord.message,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: const Color(0xFF4B4B4B),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              lineHeight: 2.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                              children: [
                                                                                                Stack(
                                                                                                  children: [
                                                                                                    if (listViewNoteMessagesRecord.aIResponse != '')
                                                                                                      Container(
                                                                                                        width: MediaQuery.sizeOf(context).width * 0.18,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          image: DecorationImage(
                                                                                                            fit: BoxFit.cover,
                                                                                                            image: Image.asset(
                                                                                                              'assets/images/vivid-blurred-colorful-wallpaper-background_(1)_1.png',
                                                                                                            ).image,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                          border: Border.all(
                                                                                                            color: Colors.transparent,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: const EdgeInsets.all(15.0),
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                listViewNoteMessagesRecord.aIResponse,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Manrope',
                                                                                                                      color: const Color(0xFF2D3E68),
                                                                                                                      fontSize: 12.0,
                                                                                                                      fontWeight: FontWeight.w500,
                                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                      lineHeight: 2.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    if (listViewNoteMessagesRecord.aIResponse == '')
                                                                                                      Lottie.asset(
                                                                                                        'assets/lottie_animations/animation_llhjfl65.json',
                                                                                                        width: 40.0,
                                                                                                        height: 40.0,
                                                                                                        fit: BoxFit.cover,
                                                                                                        animate: true,
                                                                                                      ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  controller: _model.listViewController1,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                20.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                  decoration: const BoxDecoration(
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: _model.messageinputController,
                                                                                    focusNode: _model.messageinputFocusNode,
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Message Cognitiv.ly',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF969696),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 1.5,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: const BorderSide(
                                                                                          color: Color(0xFF777777),
                                                                                          width: 1.5,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.5,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.5,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF646464),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                    validator: _model.messageinputControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('NOTE_EDITOR_PAGE_Image_54vn1y7a_ON_TAP');
                                                                                      logFirebaseEvent('Image_backend_call');

                                                                                      var noteMessagesRecordReference = NoteMessagesRecord.collection.doc();
                                                                                      await noteMessagesRecordReference.set(createNoteMessagesRecordData(
                                                                                        sessionNote: widget.notedocument?.reference,
                                                                                        user: currentUserReference,
                                                                                        message: _model.messageinputController.text,
                                                                                        date: getCurrentTimestamp,
                                                                                      ));
                                                                                      _model.notemessage = NoteMessagesRecord.getDocumentFromData(
                                                                                          createNoteMessagesRecordData(
                                                                                            sessionNote: widget.notedocument?.reference,
                                                                                            user: currentUserReference,
                                                                                            message: _model.messageinputController.text,
                                                                                            date: getCurrentTimestamp,
                                                                                          ),
                                                                                          noteMessagesRecordReference);
                                                                                      logFirebaseEvent('Image_backend_call');
                                                                                      _model.clinicalmessageAPI = await NoteDialogueCall.call(
                                                                                        therapynote: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                        message: functions.replaceDoubleQuotesLines(_model.messageinputController.text),
                                                                                      );
                                                                                      if ((_model.clinicalmessageAPI?.succeeded ?? true)) {
                                                                                        logFirebaseEvent('Image_backend_call');

                                                                                        await _model.notemessage!.reference.update(createNoteMessagesRecordData(
                                                                                          aIResponse: NoteDialogueCall.response(
                                                                                            (_model.clinicalmessageAPI?.jsonBody ?? ''),
                                                                                          ),
                                                                                        ));
                                                                                      }

                                                                                      setState(() {});
                                                                                    },
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                                                        width: 30.0,
                                                                                        height: 30.0,
                                                                                        fit: BoxFit.cover,
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (FFAppState().chatfullscreen ==
                                              true)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
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
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.25,
                                                        height: 600.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 30.0,
                                                              color: Color(
                                                                  0x7DE2E1EF),
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
                                                          child:
                                                              SingleChildScrollView(
                                                            controller: _model
                                                                .columnController6,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Original Therapy Note',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                                  child:
                                                                      SelectionArea(
                                                                          child:
                                                                              Text(
                                                                    _model
                                                                        .rawnotewebController
                                                                        .text,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF969696),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          lineHeight:
                                                                              1.8,
                                                                        ),
                                                                  )),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      30.0,
                                                                  color: Color(
                                                                      0x7DE2E1EF),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          2.0),
                                                                )
                                                              ],
                                                              gradient:
                                                                  const LinearGradient(
                                                                colors: [
                                                                  Colors.white,
                                                                  Color(
                                                                      0xC8F3F3FF),
                                                                  Color(
                                                                      0xFFEEF6FF)
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  0.6,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -0.87),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.87),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          30.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
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
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/chat-icon.svg',
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Chat with this Note',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFF707070),
                                                                                        fontSize: 16.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
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
                                                                          logFirebaseEvent(
                                                                              'NOTE_EDITOR_PAGE_Image_9fi7i9kc_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Image_update_app_state');
                                                                          setState(
                                                                              () {
                                                                            FFAppState().chatfullscreen =
                                                                                false;
                                                                          });
                                                                        },
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/minimize-details-icon.svg',
                                                                            width:
                                                                                20.0,
                                                                            height:
                                                                                20.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Your personal assistant in generating clinical insights, hypotheses, and facts',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                const Color(0xFFA3A3A3),
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            0.5,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxHeight:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              0.5,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Color(
                                                                          0x00FFFFFF),
                                                                    ),
                                                                    child: StreamBuilder<
                                                                        List<
                                                                            NoteMessagesRecord>>(
                                                                      stream:
                                                                          queryNoteMessagesRecord(
                                                                        queryBuilder: (noteMessagesRecord) => noteMessagesRecord
                                                                            .where(
                                                                              'session_note',
                                                                              isEqualTo: widget.notedocument?.reference,
                                                                            )
                                                                            .orderBy('date'),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return const Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: SpinKitRipple(
                                                                                color: Color(0xFFB9DFFF),
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<NoteMessagesRecord>
                                                                            chatFullColumnNoteMessagesRecordList =
                                                                            snapshot.data!;
                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              chatFullColumnNoteMessagesRecordList.length,
                                                                          itemBuilder:
                                                                              (context, chatFullColumnIndex) {
                                                                            final chatFullColumnNoteMessagesRecord =
                                                                                chatFullColumnNoteMessagesRecordList[chatFullColumnIndex];
                                                                            return Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.25,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          image: DecorationImage(
                                                                                            fit: BoxFit.cover,
                                                                                            image: Image.asset(
                                                                                              'assets/images/studio-background-concept-abstract-empty-light-gradient-purple-studio-room-background-product-plain-studio-background.jpg',
                                                                                            ).image,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          border: Border.all(
                                                                                            color: Colors.transparent,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(15.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                chatFullColumnNoteMessagesRecord.message,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: const Color(0xFF4B4B4B),
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      lineHeight: 2.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (chatFullColumnNoteMessagesRecord.aIResponse != '')
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.25,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  image: DecorationImage(
                                                                                                    fit: BoxFit.cover,
                                                                                                    image: Image.asset(
                                                                                                      'assets/images/OAK3ZC0_1.png',
                                                                                                    ).image,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                  border: Border.all(
                                                                                                    color: const Color(0xB2C9C4E1),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsets.all(15.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        chatFullColumnNoteMessagesRecord.aIResponse,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: const Color(0xFF2D3E68),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              lineHeight: 2.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (chatFullColumnNoteMessagesRecord.aIResponse == '')
                                                                                              Lottie.asset(
                                                                                                'assets/lottie_animations/animation_llhjfl65.json',
                                                                                                width: 40.0,
                                                                                                height: 40.0,
                                                                                                fit: BoxFit.cover,
                                                                                                animate: true,
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                          controller:
                                                                              _model.chatFullColumn,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.3,
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            color:
                                                                                Color(0x00FFFFFF),
                                                                          ),
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.messageinputfullController,
                                                                            focusNode:
                                                                                _model.messageinputfullFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: 'Message Cognitiv.ly',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFF848484),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFFCCCCCC),
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFFADADAD),
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.5,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF848484),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            validator:
                                                                                _model.messageinputfullControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
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
                                                                              logFirebaseEvent('NOTE_EDITOR_PAGE_Image_gto4c9g5_ON_TAP');
                                                                              logFirebaseEvent('Image_backend_call');

                                                                              var noteMessagesRecordReference = NoteMessagesRecord.collection.doc();
                                                                              await noteMessagesRecordReference.set(createNoteMessagesRecordData(
                                                                                sessionNote: widget.notedocument?.reference,
                                                                                user: currentUserReference,
                                                                                message: _model.messageinputfullController.text,
                                                                                date: getCurrentTimestamp,
                                                                              ));
                                                                              _model.notemessagefull = NoteMessagesRecord.getDocumentFromData(
                                                                                  createNoteMessagesRecordData(
                                                                                    sessionNote: widget.notedocument?.reference,
                                                                                    user: currentUserReference,
                                                                                    message: _model.messageinputfullController.text,
                                                                                    date: getCurrentTimestamp,
                                                                                  ),
                                                                                  noteMessagesRecordReference);
                                                                              logFirebaseEvent('Image_backend_call');
                                                                              _model.clinicalmessageAPIFull = await NoteDialogueCall.call(
                                                                                therapynote: functions.replaceDoubleQuotesLines(_model.rawnotewebController.text),
                                                                                message: functions.replaceDoubleQuotesLines(_model.messageinputfullController.text),
                                                                              );
                                                                              if ((_model.clinicalmessageAPIFull?.succeeded ?? true)) {
                                                                                logFirebaseEvent('Image_backend_call');

                                                                                await _model.notemessagefull!.reference.update(createNoteMessagesRecordData(
                                                                                  aIResponse: NoteDialogueCall.response(
                                                                                    (_model.clinicalmessageAPIFull?.jsonBody ?? ''),
                                                                                  ),
                                                                                ));
                                                                                logFirebaseEvent('Image_scroll_to');
                                                                                await _model.chatFullColumn?.animateTo(
                                                                                  _model.chatFullColumn!.position.maxScrollExtent,
                                                                                  duration: const Duration(milliseconds: 100),
                                                                                  curve: Curves.ease,
                                                                                );
                                                                                logFirebaseEvent('Image_clear_text_fields_pin_codes');
                                                                                setState(() {
                                                                                  _model.messageinputfullController?.clear();
                                                                                });
                                                                              }

                                                                              setState(() {});
                                                                            },
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/Right-Arrow-Narrow.svg',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
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
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                            if (FFAppState().notestep1processing == true)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xE2FFFFFF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      40.0, 80.0, 40.0, 40.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Ingesting note',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Parsing semantic and syntactic structure',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation1']!,
                                          hasBeenTriggered: hasRowTriggered1),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Composing Summary',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Restructuring raw text note',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation2']!,
                                          hasBeenTriggered: hasRowTriggered2),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Synthesizing DSM Clinical Concepts',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Merging note summary with clinical concepts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation3']!,
                                          hasBeenTriggered: hasRowTriggered3),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Finishing Up',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Writing and encrypting note summary and diagnostic hypotheses',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation4']!,
                                          hasBeenTriggered: hasRowTriggered4),
                                    ],
                                  ),
                                ),
                              ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation1']!,
                                  hasBeenTriggered: hasContainerTriggered1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      wrapWithModel(
                        model: _model.compressedMenuModel2,
                        updateCallback: () => setState(() {}),
                        child: const CompressedMenuWidget(),
                      ),
                    Flexible(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 50.0, 20.0, 20.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: SingleChildScrollView(
                                  controller: _model.columnController7,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'NOTE_EDITOR_PAGE_Icon_d0j9lm4t_ON_TAP');
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
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'NOTE_EDITOR_PAGE_Image_4bx6t0v6_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_navigate_to');

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
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Left-Arrow-Narrow.svg',
                                                          width: 45.0,
                                                          height: 45.0,
                                                          fit: BoxFit.cover,
                                                        ),
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
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Editing ${widget.patientdoc?.name}\'s note',
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
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.8,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .rawnotetitlemobileController,
                                                              focusNode: _model
                                                                  .rawnotetitlemobileFocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          30.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: const Color(
                                                                          0xFF81888F),
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xFFD4D4D4),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF666666),
                                                                    fontSize:
                                                                        valueOrDefault<
                                                                            double>(
                                                                      () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 24.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 30.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 30.0;
                                                                        } else {
                                                                          return 30.0;
                                                                        }
                                                                      }(),
                                                                      30.0,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w200,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                              validator: _model
                                                                  .rawnotetitlemobileControllerValidator
                                                                  .asValidator(
                                                                      context),
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
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: const Alignment(0.0, 0),
                                              child: TabBar(
                                                labelColor: const Color(0xFF646464),
                                                unselectedLabelColor:
                                                    const Color(0xFF969696),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize:
                                                              valueOrDefault<
                                                                  double>(
                                                            () {
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
                                                                return 16.0;
                                                              } else {
                                                                return 12.0;
                                                              }
                                                            }(),
                                                            16.0,
                                                          ),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                unselectedLabelStyle:
                                                    const TextStyle(),
                                                indicatorColor:
                                                    const Color(0xFF969696),
                                                padding: const EdgeInsets.all(4.0),
                                                tabs: const [
                                                  Tab(
                                                    text: 'Note Editor',
                                                  ),
                                                  Tab(
                                                    text: 'Insights',
                                                  ),
                                                ],
                                                controller:
                                                    _model.tabBarController,
                                                onTap: (i) async {
                                                  [
                                                    () async {},
                                                    () async {}
                                                  ][i]();
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                controller:
                                                    _model.tabBarController,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      controller: _model
                                                          .columnController8,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.7,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      30.0,
                                                                  color: Color(
                                                                      0x80D6DCE5),
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
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30.0,
                                                                          20.0,
                                                                          30.0,
                                                                          30.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    controller:
                                                                        _model
                                                                            .rowController3,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        StreamBuilder<
                                                                            SessionNotesRecord>(
                                                                          stream: SessionNotesRecord.getDocument(widget
                                                                              .notedocument!
                                                                              .reference),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowSessionNotesRecord =
                                                                                snapshot.data!;
                                                                            return SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              controller: _model.rowController4,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FutureBuilder<List<NoteTemplatesRecord>>(
                                                                                    future: queryNoteTemplatesRecordOnce(
                                                                                      queryBuilder: (noteTemplatesRecord) => noteTemplatesRecord.where(
                                                                                        'user',
                                                                                        isEqualTo: currentUserReference,
                                                                                      ),
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
                                                                                      List<NoteTemplatesRecord> rowNoteTemplatesRecordList = snapshot.data!;
                                                                                      return SingleChildScrollView(
                                                                                        scrollDirection: Axis.horizontal,
                                                                                        controller: _model.rowController5,
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          children: List.generate(rowNoteTemplatesRecordList.length, (rowIndex) {
                                                                                            final rowNoteTemplatesRecord = rowNoteTemplatesRecordList[rowIndex];
                                                                                            return Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  if (!rowNoteTemplatesRecord.sessionNotes.contains(widget.notedocument?.reference))
                                                                                                    FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                        logFirebaseEvent('Button_backend_call');
                                                                                                        _model.redactionactionoutmobile = await PangeaRedactCall.call(
                                                                                                          rawText: functions.replaceDoubleQuotesLines(_model.rawnotemobileController.text),
                                                                                                        );
                                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                                        await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                          rawNote: PangeaRedactCall.redactionresult(
                                                                                                            (_model.redactionactionoutmobile?.jsonBody ?? ''),
                                                                                                          ).toString(),
                                                                                                        ));
                                                                                                        logFirebaseEvent('Button_backend_call');
                                                                                                        _model.customNoteGenerationMobile = await CustomNoteGenerationCall.call(
                                                                                                          example: functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(rowNoteTemplatesRecord.templateExample)),
                                                                                                          description: functions.replaceDoubleQuotesLines(functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(rowNoteTemplatesRecord.templateDescription))),
                                                                                                          therapynote: functions.replaceLineBreaks(PangeaRedactCall.redactionresult(
                                                                                                            (_model.redactionactionoutmobile?.jsonBody ?? ''),
                                                                                                          ).toString()),
                                                                                                        );
                                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                                        await CustomNoteGenerationsRecord.collection.doc().set(createCustomNoteGenerationsRecordData(
                                                                                                              sessionNote: widget.notedocument?.reference,
                                                                                                              noteTemplate: rowNoteTemplatesRecord.reference,
                                                                                                              generatedNote: CustomNoteGenerationCall.psychotherapynote(
                                                                                                                (_model.customNoteGenerationMobile?.jsonBody ?? ''),
                                                                                                              ),
                                                                                                            ));
                                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                                        await rowNoteTemplatesRecord.reference.update({
                                                                                                          ...mapToFirestore(
                                                                                                            {
                                                                                                              'session_notes': FieldValue.arrayUnion([widget.notedocument?.reference]),
                                                                                                            },
                                                                                                          ),
                                                                                                        });
                                                                                                        logFirebaseEvent('Button_bottom_sheet');
                                                                                                        await showModalBottomSheet(
                                                                                                          isScrollControlled: true,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          enableDrag: false,
                                                                                                          context: context,
                                                                                                          builder: (context) {
                                                                                                            return GestureDetector(
                                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                              child: Padding(
                                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                                child: SizedBox(
                                                                                                                  height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                                  child: CustomNotePopUpWidget(
                                                                                                                    sessiondocument: rowSessionNotesRecord,
                                                                                                                    notetemplate: rowNoteTemplatesRecord,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() {}));

                                                                                                        setState(() {});
                                                                                                      },
                                                                                                      text: rowNoteTemplatesRecord.templateTitle,
                                                                                                      icon: const Icon(
                                                                                                        Icons.grain,
                                                                                                        size: 15.0,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 50.0,
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: Colors.white,
                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: const Color(0xFF828697),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                            ),
                                                                                                        elevation: 0.0,
                                                                                                        borderSide: const BorderSide(
                                                                                                          color: Color(0xFFD6DDE9),
                                                                                                          width: 1.5,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (rowNoteTemplatesRecord.sessionNotes.contains(widget.notedocument?.reference))
                                                                                                    FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                        logFirebaseEvent('Button_bottom_sheet');
                                                                                                        await showModalBottomSheet(
                                                                                                          isScrollControlled: true,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          enableDrag: false,
                                                                                                          context: context,
                                                                                                          builder: (context) {
                                                                                                            return GestureDetector(
                                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                              child: Padding(
                                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                                child: SizedBox(
                                                                                                                  height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                                  child: CustomNotePopUpWidget(
                                                                                                                    sessiondocument: rowSessionNotesRecord,
                                                                                                                    notetemplate: rowNoteTemplatesRecord,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() {}));
                                                                                                      },
                                                                                                      text: rowNoteTemplatesRecord.templateTitle,
                                                                                                      icon: const Icon(
                                                                                                        Icons.remove_red_eye_outlined,
                                                                                                        size: 15.0,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 50.0,
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: Colors.white,
                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: const Color(0xFF828697),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                            ),
                                                                                                        elevation: 0.0,
                                                                                                        borderSide: const BorderSide(
                                                                                                          color: Color(0xFFD6DDE9),
                                                                                                          width: 1.5,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          }),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  SingleChildScrollView(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    controller: _model.rowController6,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              if (rowSessionNotesRecord.treatmentPlan == '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_TREATMENT_PLAN_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.redactionactionouttreatmentmobile = await PangeaRedactCall.call(
                                                                                                      rawText: functions.replaceDoubleQuotesLines(functions.replaceDoubleQuotesLines(_model.rawnotewebController.text)),
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      rawNote: PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionouttreatmentmobile?.jsonBody ?? ''),
                                                                                                      ).toString(),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.treatmentPlanMobile = await TreatmentPlanCall.call(
                                                                                                      therapynote: functions.replaceDoubleQuotesLines(functions.replaceLineBreaks(PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionouttreatmentmobile?.jsonBody ?? ''),
                                                                                                      ).toString())),
                                                                                                      example: 'Current/Presenting Issues: John is currently experiencing anxiety (racing thoughts, restlessness, difficulty sleeping) that prevents him from maintaining consistent employment. His anxiety increased after the COVID pandemic and lockdown, but states he has always been “high strung.” He states that he suffers from “Sunday Scaries” which can turn into an anxiety attack. He estimates he has “a few” anxiety attacks per year. John reports that he is unable to stay at a job for more than six months due to his anxiety, and when employed, cannot “unplug” from work to fully enjoy his free time. Treatment History (Summary): Client has seen Psychiatrist, Janet Doe every six weeks since 8/1/2022 for symptom management. Client does not have a PCP. What Interventions/Strategies have Helped Most: Client reports that Ativan and Buspiron are helpful in managing Anxiety Symptoms but wants to avoid relying on it. Client is interested in evaluating thought patterns that lead to “downward spiral” (sic) and has practiced 5-5-5 “grounding exercises” suggested by psychiatrist. Current Meds/Prescribed By (if applicable): Ativan, 5 Mg / as needed for anxiety by Janet Doe, MD (Psychiatrist), Buspirone 5mg / day for anxiety Recommended Services: Assessment, Individual Therapy, Medication management Goal #1: Target Date (120 Days or 15 visits): The patient will learn to cope with feelings of anxiety, without withdrawing and having to remove himself from work obligations. Objective: Decreased incidence of anxiety interfering in work per client’s reportModality: Practice ACT skills to handle work experiences without unmanageable anxiety : Goal #1 Date: 3 months Goal #2: Decrease catastrophic thinking and negative outcomes associated with negative thinking in order to increase positive social interactions Action step/Objective B: Cognitive training exercises to evaluate thought patterns to change interactions in social and work environments. Intervention Methods/Modalities: ACT and Cognitive therapy Goal #2 Date: 3 months',
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      treatmentPlan: TreatmentPlanCall.treatmentplan(
                                                                                                        (_model.treatmentPlanMobile?.jsonBody ?? ''),
                                                                                                      ),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: const Color(0x33000000),
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: TreatmentPlanWidget(
                                                                                                                sessiondocument: rowSessionNotesRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));

                                                                                                    setState(() {});
                                                                                                  },
                                                                                                  text: 'Treatment Plan',
                                                                                                  icon: const Icon(
                                                                                                    Icons.grain,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                ),
                                                                                              if (rowSessionNotesRecord.treatmentPlan != '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_TREATMENT_PLAN_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: const Color(0x33000000),
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: TreatmentPlanWidget(
                                                                                                                sessiondocument: rowSessionNotesRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  text: 'Treatment Plan',
                                                                                                  icon: const Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (rowSessionNotesRecord.aiPsychotherapyNote == '')
                                                                                              FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.redactionactionoutpsychotherapymobile = await PangeaRedactCall.call(
                                                                                                    rawText: functions.replaceDoubleQuotesLines(_model.rawnotemobileController.text),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    rawNote: PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutpsychotherapymobile?.jsonBody ?? ''),
                                                                                                    ).toString(),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.psychoTherapyNoteMobile = await PsychotherapyNoteCall.call(
                                                                                                    therapynote: functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                                      (_model.redactionactionoutpsychotherapymobile?.jsonBody ?? ''),
                                                                                                    ).toString()),
                                                                                                  );
                                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                                  await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                    aiPsychotherapyNote: PsychotherapyNoteCall.psychotherapynote(
                                                                                                      (_model.psychoTherapyNoteMobile?.jsonBody ?? ''),
                                                                                                    ),
                                                                                                  ));
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: PsychotherapyNotePopupWidget(
                                                                                                              sessiondocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));

                                                                                                  setState(() {});
                                                                                                },
                                                                                                text: 'Psychotherapy Note',
                                                                                                icon: const Icon(
                                                                                                  Icons.grain,
                                                                                                  size: 15.0,
                                                                                                ),
                                                                                                options: FFButtonOptions(
                                                                                                  height: 50.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: Colors.white,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Manrope',
                                                                                                        color: const Color(0xFF828697),
                                                                                                        fontSize: 12.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFD6DDE9),
                                                                                                    width: 1.5,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                              ),
                                                                                            if (rowSessionNotesRecord.aiPsychotherapyNote != '')
                                                                                              FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  logFirebaseEvent('NOTE_EDITOR_PSYCHOTHERAPY_NOTE_BTN_ON_TA');
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: PsychotherapyNotePopupWidget(
                                                                                                              sessiondocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                },
                                                                                                text: 'Psychotherapy Note',
                                                                                                icon: const Icon(
                                                                                                  Icons.remove_red_eye_outlined,
                                                                                                  size: 15.0,
                                                                                                ),
                                                                                                options: FFButtonOptions(
                                                                                                  height: 50.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: Colors.white,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Manrope',
                                                                                                        color: const Color(0xFF828697),
                                                                                                        fontSize: 12.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFD6DDE9),
                                                                                                    width: 1.5,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              if (rowSessionNotesRecord.aiSoapNote == '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_PAGE_S_O_A_P_NOTE_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.redactionactionoutfullsoapmobile = await PangeaRedactCall.call(
                                                                                                      rawText: functions.replaceDoubleQuotesLines(_model.rawnotemobileController.text),
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      rawNote: PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionoutfullsoapmobile?.jsonBody ?? ''),
                                                                                                      ).toString(),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.sOAPNoteMobile = await SOAPNoteCall.call(
                                                                                                      therapynote: functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionoutfullsoapmobile?.jsonBody ?? ''),
                                                                                                      ).toString()),
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      aiSoapNote: SOAPNoteCall.soapnote(
                                                                                                        (_model.sOAPNoteMobile?.jsonBody ?? ''),
                                                                                                      ),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: SoapNotePopupWidget(
                                                                                                                sessiondocument: widget.notedocument!,
                                                                                                                patientdoc: widget.patientdoc!,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));

                                                                                                    setState(() {});
                                                                                                  },
                                                                                                  text: 'SOAP Note',
                                                                                                  icon: const Icon(
                                                                                                    Icons.grain,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                ),
                                                                                              if (rowSessionNotesRecord.aiSoapNote != '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_PAGE_S_O_A_P_NOTE_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: SoapNotePopupWidget(
                                                                                                                sessiondocument: widget.notedocument!,
                                                                                                                patientdoc: widget.patientdoc!,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  text: 'SOAP Note',
                                                                                                  icon: const Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              if (rowSessionNotesRecord.aiBirpNote == '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_PAGE_B_I_R_P_NOTE_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.redactionactionoutfullbirpmobile = await PangeaRedactCall.call(
                                                                                                      rawText: functions.replaceDoubleQuotesLines(_model.rawnotemobileController.text),
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      rawNote: PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionoutfullbirpmobile?.jsonBody ?? ''),
                                                                                                      ).toString(),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_backend_call');
                                                                                                    _model.bIRPNoteMobile = await BIRPNoteCall.call(
                                                                                                      therapynote: PangeaRedactCall.redactionresult(
                                                                                                        (_model.redactionactionoutfullbirpmobile?.jsonBody ?? ''),
                                                                                                      ).toString(),
                                                                                                    );
                                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                                    await widget.notedocument!.reference.update(createSessionNotesRecordData(
                                                                                                      aiBirpNote: BIRPNoteCall.birpnote(
                                                                                                        (_model.bIRPNoteMobile?.jsonBody ?? ''),
                                                                                                      ),
                                                                                                    ));
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: BirpNotePopupWidget(
                                                                                                                sessiondocument: widget.notedocument!,
                                                                                                                patientdoc: widget.patientdoc!,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));

                                                                                                    setState(() {});
                                                                                                  },
                                                                                                  text: 'BIRP Note',
                                                                                                  icon: const Icon(
                                                                                                    Icons.grain,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                ),
                                                                                              if (rowSessionNotesRecord.aiBirpNote != '')
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('NOTE_EDITOR_PAGE_B_I_R_P_NOTE_BTN_ON_TAP');
                                                                                                    logFirebaseEvent('Button_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                              child: BirpNotePopupWidget(
                                                                                                                sessiondocument: widget.notedocument!,
                                                                                                                patientdoc: widget.patientdoc!,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  text: 'BIRP Note',
                                                                                                  icon: const Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 50.0,
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Colors.white,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: const Color(0xFF828697),
                                                                                                          fontSize: 12.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: const BorderSide(
                                                                                                      color: Color(0xFFD6DDE9),
                                                                                                      width: 1.5,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(5.0),
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
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
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
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      controller:
                                                                          _model
                                                                              .rowController7,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          SizedBox(
                                                                            width:
                                                                                40.0,
                                                                            height:
                                                                                40.0,
                                                                            child:
                                                                                custom_widgets.SoundRecordAndPlay(
                                                                              width: 40.0,
                                                                              height: 40.0,
                                                                              notedocument: widget.notedocument,
                                                                            ),
                                                                          ),
                                                                          StreamBuilder<
                                                                              SessionNotesRecord>(
                                                                            stream:
                                                                                SessionNotesRecord.getDocument(widget.notedocument!.reference),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final containerSessionNotesRecord = snapshot.data!;
                                                                              return Container(
                                                                                decoration: const BoxDecoration(
                                                                                  color: Colors.white,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (FFAppState().processingaudio == true)
                                                                                      Lottie.asset(
                                                                                        'assets/lottie_animations/animation_llcyw2a9.json',
                                                                                        width: 40.0,
                                                                                        height: 40.0,
                                                                                        fit: BoxFit.cover,
                                                                                        animate: true,
                                                                                      ),
                                                                                    if (containerSessionNotesRecord.transcribed == true)
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 50.0,
                                                                                              height: 2.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: const Color(0xFFC7C7C7),
                                                                                                borderRadius: BorderRadius.circular(2000.0),
                                                                                              ),
                                                                                            ),
                                                                                            const Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 3.0),
                                                                                              child: Icon(
                                                                                                Icons.check_outlined,
                                                                                                color: Color(0xFFA5A5A5),
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  logFirebaseEvent('NOTE_EDITOR_PAGE_VIEW_BTN_ON_TAP');
                                                                                                  logFirebaseEvent('Button_bottom_sheet');
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                            child: TranscribedAudioNoteWidget(
                                                                                                              notedocument: widget.notedocument!,
                                                                                                              patientdoc: widget.patientdoc!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                },
                                                                                                text: 'View',
                                                                                                icon: const Icon(
                                                                                                  Icons.short_text_outlined,
                                                                                                  size: 15.0,
                                                                                                ),
                                                                                                options: FFButtonOptions(
                                                                                                  height: 40.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: Colors.white,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Manrope',
                                                                                                        color: const Color(0xFF6E6E6E),
                                                                                                        fontSize: 12.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFB9B9B9),
                                                                                                    width: 1.3,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(200.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.rawnotemobileController,
                                                                          focusNode:
                                                                              _model.rawnotemobileFocusNode,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF7D7D7D),
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                ),
                                                                            hintText:
                                                                                'Begin typing your note here...',
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF818181),
                                                                                  fontSize: () {
                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                      return 12.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                      return 14.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                      return 14.0;
                                                                                    } else {
                                                                                      return 14.0;
                                                                                    }
                                                                                  }(),
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                ),
                                                                            enabledBorder:
                                                                                InputBorder.none,
                                                                            focusedBorder:
                                                                                InputBorder.none,
                                                                            errorBorder:
                                                                                InputBorder.none,
                                                                            focusedErrorBorder:
                                                                                InputBorder.none,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontSize: () {
                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                    return 12.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                    return 14.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                    return 14.0;
                                                                                  } else {
                                                                                    return 14.0;
                                                                                  }
                                                                                }(),
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                lineHeight: 1.8,
                                                                              ),
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          maxLines:
                                                                              20,
                                                                          validator: _model
                                                                              .rawnotemobileControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    20.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'NOTE_EDITOR_PAGE_SAVE_BTN_ON_TAP');
                                                                    if (_model
                                                                        .switchfullValue!) {
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.redactionactionoutfullfastmobile =
                                                                          await PangeaRedactCall
                                                                              .call(
                                                                        rawText: functions.replaceDoubleQuotesLines(_model
                                                                            .rawnotemobileController
                                                                            .text),
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.notesSummaryFastFullMobile =
                                                                          await NotesSummaryCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullfastmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                        model:
                                                                            'gpt-3.5-turbo-16k',
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.noteHypothesesFastFullMobile =
                                                                          await NoteHypothesesCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullfastmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                        model:
                                                                            'gpt-3.5-turbo-16k',
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.noteTitleFastFullMobile =
                                                                          await NotesTitleCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullfastmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .notedocument!
                                                                          .reference
                                                                          .update(
                                                                              createSessionNotesRecordData(
                                                                        rawNote:
                                                                            PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullfastmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        aiSummary:
                                                                            NotesSummaryCall.notessummary(
                                                                          (_model.notesSummaryFastFullMobile?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        processed:
                                                                            true,
                                                                        rawNoteTitle: _model
                                                                            .rawnotetitlemobileController
                                                                            .text,
                                                                        aiDiagnostics:
                                                                            NoteHypothesesCall.noteshypotheses(
                                                                          (_model.noteHypothesesFastFullMobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        aiNoteTitle:
                                                                            NotesTitleCall.notestitle(
                                                                          (_model.noteTitleFastFullMobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        patientDocument: widget
                                                                            .patientdoc
                                                                            ?.reference,
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .patientdoc!
                                                                          .reference
                                                                          .update(
                                                                              createPatientDocumentsRecordData(
                                                                        lastupdated:
                                                                            getCurrentTimestamp,
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Button_update_app_state');
                                                                      setState(
                                                                          () {
                                                                        FFAppState().notestep1processing =
                                                                            false;
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PatientNotes',
                                                                        queryParameters:
                                                                            {
                                                                          'patientdocument':
                                                                              serializeParam(
                                                                            widget.patientdoc,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'patientdocument':
                                                                              widget.patientdoc,
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.redactionactionoutfullslowmobile =
                                                                          await PangeaRedactCall
                                                                              .call(
                                                                        rawText: functions.replaceDoubleQuotesLines(_model
                                                                            .rawnotemobileController
                                                                            .text),
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.notesSummarySlowMobile =
                                                                          await NotesSummaryCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullslowmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                        model:
                                                                            'gpt-4',
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.noteHypothesesSlowMobile =
                                                                          await NoteHypothesesCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullslowmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                        model:
                                                                            'gpt-4',
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.noteTitleFullSlowMobile =
                                                                          await NotesTitleCall
                                                                              .call(
                                                                        therapynote:
                                                                            functions.replaceDoubleQuotesLines(PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullslowmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString()),
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .notedocument!
                                                                          .reference
                                                                          .update(
                                                                              createSessionNotesRecordData(
                                                                        rawNote:
                                                                            PangeaRedactCall.redactionresult(
                                                                          (_model.redactionactionoutfullslowmobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        aiSummary:
                                                                            NotesSummaryCall.notessummary(
                                                                          (_model.notesSummarySlowMobile?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        processed:
                                                                            true,
                                                                        rawNoteTitle: _model
                                                                            .rawnotetitlemobileController
                                                                            .text,
                                                                        aiDiagnostics:
                                                                            NoteHypothesesCall.noteshypotheses(
                                                                          (_model.noteHypothesesSlowMobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        aiNoteTitle:
                                                                            NotesTitleCall.notestitle(
                                                                          (_model.noteTitleFullSlowMobile?.jsonBody ??
                                                                              ''),
                                                                        ).toString(),
                                                                        patientDocument: widget
                                                                            .patientdoc
                                                                            ?.reference,
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .patientdoc!
                                                                          .reference
                                                                          .update(
                                                                              createPatientDocumentsRecordData(
                                                                        lastupdated:
                                                                            getCurrentTimestamp,
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Button_update_app_state');
                                                                      setState(
                                                                          () {
                                                                        FFAppState().notestep1processing =
                                                                            false;
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PatientNotes',
                                                                        queryParameters:
                                                                            {
                                                                          'patientdocument':
                                                                              serializeParam(
                                                                            widget.patientdoc,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'patientdocument':
                                                                              widget.patientdoc,
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    }

                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  text: 'Save',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_right,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            30.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: const Color(
                                                                        0xFFECF5FF),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xA11E3A7F),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      AlignedTooltip(
                                                                        content: Padding(
                                                                            padding: const EdgeInsets.all(4.0),
                                                                            child: Text(
                                                                              'When activated, analysis processes faster with a tradeoff in accuracy',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xFF4E4E4E),
                                                                                    fontSize: 14.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                  ),
                                                                            )),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.right,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            1.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            const Duration(milliseconds: 100),
                                                                        showDuration:
                                                                            const Duration(milliseconds: 1500),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: Switch
                                                                            .adaptive(
                                                                          value: _model.switchfullValue ??=
                                                                              false,
                                                                          onChanged:
                                                                              (newValue) async {
                                                                            setState(() =>
                                                                                _model.switchfullValue = newValue);
                                                                          },
                                                                          activeColor:
                                                                              const Color(0xFF2E2E31),
                                                                          activeTrackColor:
                                                                              const Color(0xFFB2B2B2),
                                                                          inactiveTrackColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          inactiveThumbColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      Stack(
                                                                        children: [
                                                                          if (_model.switchfullValue ==
                                                                              true)
                                                                            Icon(
                                                                              Icons.bolt_sharp,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 22.0,
                                                                            ),
                                                                          if (_model.switchfullValue ==
                                                                              false)
                                                                            Icon(
                                                                              Icons.short_text_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 22.0,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ],
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      controller: _model
                                                          .columnController9,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                FlutterFlowChoiceChips(
                                                                  options: const [
                                                                    ChipData(
                                                                        'Insights',
                                                                        Icons
                                                                            .insights_sharp),
                                                                    ChipData(
                                                                        'Chat',
                                                                        Icons
                                                                            .chat_bubble)
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          _model.choiceChipsValue2 =
                                                                              val?.first),
                                                                  selectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF6B6B6B),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    iconColor:
                                                                        const Color(
                                                                            0xFF4F4F4F),
                                                                    iconSize:
                                                                        18.0,
                                                                    labelPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            10.0,
                                                                            5.0),
                                                                    elevation:
                                                                        0.0,
                                                                    borderColor:
                                                                        const Color(
                                                                            0xFF999999),
                                                                    borderWidth:
                                                                        1.2,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10000.0),
                                                                  ),
                                                                  unselectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF6B6B6B),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    iconColor:
                                                                        const Color(
                                                                            0xFF465361),
                                                                    iconSize:
                                                                        16.0,
                                                                    labelPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            10.0,
                                                                            5.0),
                                                                    elevation:
                                                                        0.0,
                                                                    borderColor:
                                                                        const Color(
                                                                            0xFFD8D8D8),
                                                                    borderWidth:
                                                                        1.2,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10000.0),
                                                                  ),
                                                                  chipSpacing:
                                                                      20.0,
                                                                  rowSpacing:
                                                                      12.0,
                                                                  multiselect:
                                                                      false,
                                                                  initialized:
                                                                      _model.choiceChipsValue2 !=
                                                                          null,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  controller: _model
                                                                          .choiceChipsValueController2 ??=
                                                                      FormFieldController<
                                                                          List<
                                                                              String>>(
                                                                    [
                                                                      'Insights'
                                                                    ],
                                                                  ),
                                                                  wrapped: true,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Stack(
                                                            children: [
                                                              if (_model
                                                                      .choiceChipsValue2 ==
                                                                  'Insights')
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (widget
                                                                              .notedocument
                                                                              ?.processed ==
                                                                          true)
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.8,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.35,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            boxShadow: const [
                                                                              BoxShadow(
                                                                                blurRadius: 30.0,
                                                                                color: Color(0x80D6DCE5),
                                                                                offset: Offset(0.0, 2.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(30.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              controller: _model.columnController10,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Intelligent Summary',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF707070),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('NOTE_EDITOR_PAGE_CopySummary_ON_TAP');
                                                                                          logFirebaseEvent('CopySummary_copy_to_clipboard');
                                                                                          await Clipboard.setData(ClipboardData(text: widget.notedocument!.aiSummary));
                                                                                          logFirebaseEvent('CopySummary_show_snack_bar');
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Copied to Clipboard',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Manrope',
                                                                                                  color: const Color(0xFFF0F0F0),
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                              ),
                                                                                              duration: const Duration(milliseconds: 4000),
                                                                                              backgroundColor: const Color(0xFF454545),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        child: const Icon(
                                                                                          Icons.content_copy_outlined,
                                                                                          color: Color(0xFF868686),
                                                                                          size: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'High-level details captured from your notes',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFFA3A3A3),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: SelectionArea(
                                                                                        child: Text(
                                                                                      widget.notedocument!.aiSummary,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF979797),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 2.0,
                                                                                          ),
                                                                                    )),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (widget
                                                                              .notedocument
                                                                              ?.processed ==
                                                                          true)
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.8,
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.35,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.white,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 30.0,
                                                                                  color: Color(0x80D6DCE5),
                                                                                  offset: Offset(0.0, 2.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(30.0),
                                                                              child: SingleChildScrollView(
                                                                                controller: _model.columnController11,
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Hypotheses',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF707070),
                                                                                                fontSize: 18.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('NOTE_EDITOR_PAGE_CopyHypotheses_ON_TAP');
                                                                                            logFirebaseEvent('CopyHypotheses_copy_to_clipboard');
                                                                                            await Clipboard.setData(ClipboardData(text: widget.notedocument!.aiDiagnostics));
                                                                                            logFirebaseEvent('CopyHypotheses_show_snack_bar');
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  'Copied to Clipboard',
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Manrope',
                                                                                                    color: const Color(0xFFF0F0F0),
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: const Color(0xFF454545),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                          child: const Icon(
                                                                                            Icons.content_copy_outlined,
                                                                                            color: Color(0xFF868686),
                                                                                            size: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Potential diagnoses to consider.',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFFA3A3A3),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                      child: SelectionArea(
                                                                                          child: Text(
                                                                                        widget.notedocument!.aiDiagnostics,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF979797),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              lineHeight: 2.0,
                                                                                            ),
                                                                                      )),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (widget
                                                                              .notedocument
                                                                              ?.processed ==
                                                                          false)
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.8,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            boxShadow: const [
                                                                              BoxShadow(
                                                                                blurRadius: 30.0,
                                                                                color: Color(0x80D6DCE5),
                                                                                offset: Offset(0.0, 2.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(30.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Intelligent Summary',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF707070),
                                                                                            fontSize: 18.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'An AI-generated summary of this note will be created below once you save this document.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFFA3A3A3),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/3d-construction-abstract-vivid-composition-with-head-silhouette-1_(1).png',
                                                                                      width: 300.0,
                                                                                      height: 200.0,
                                                                                      fit: BoxFit.contain,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (widget
                                                                              .notedocument
                                                                              ?.processed ==
                                                                          false)
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.8,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.white,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 30.0,
                                                                                  color: Color(0x80D6DCE5),
                                                                                  offset: Offset(0.0, 2.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(30.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Diagnostic Hypotheses',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF707070),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'AI generated diagnostic hypotheses will be shown here once this document is processe .',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFFA3A3A3),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.asset(
                                                                                        'assets/images/3d-construction-made-of-glass-abstract-geometrical-composition.png',
                                                                                        width: 300.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.contain,
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
                                                              if (_model
                                                                      .choiceChipsValue2 ==
                                                                  'Chat')
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 30.0,
                                                                              color: Color(0x80D6DCE5),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(30.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: SvgPicture.asset(
                                                                                              'assets/images/chat-icon.svg',
                                                                                              width: 20.0,
                                                                                              height: 20.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Chat with this Note',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF707070),
                                                                                                    fontSize: 16.0,
                                                                                                    fontWeight: FontWeight.normal,
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
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Your personal assistant in generating clinical insights, hypotheses, and facts',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFFA3A3A3),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                constraints: BoxConstraints(
                                                                                  maxHeight: MediaQuery.sizeOf(context).height * 0.35,
                                                                                ),
                                                                                decoration: const BoxDecoration(
                                                                                  color: Colors.white,
                                                                                ),
                                                                                child: StreamBuilder<List<NoteMessagesRecord>>(
                                                                                  stream: queryNoteMessagesRecord(
                                                                                    queryBuilder: (noteMessagesRecord) => noteMessagesRecord
                                                                                        .where(
                                                                                          'session_note',
                                                                                          isEqualTo: widget.notedocument?.reference,
                                                                                        )
                                                                                        .orderBy('date'),
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
                                                                                    List<NoteMessagesRecord> listViewNoteMessagesRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewNoteMessagesRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewNoteMessagesRecord = listViewNoteMessagesRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.cover,
                                                                                                        image: Image.asset(
                                                                                                          'assets/images/gradient-blue_1.png',
                                                                                                        ).image,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                                      border: Border.all(
                                                                                                        color: Colors.transparent,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsets.all(15.0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            listViewNoteMessagesRecord.message,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Manrope',
                                                                                                                  color: const Color(0xFF4B4B4B),
                                                                                                                  fontSize: 12.0,
                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  lineHeight: 2.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                  children: [
                                                                                                    Stack(
                                                                                                      children: [
                                                                                                        if (listViewNoteMessagesRecord.aIResponse != '')
                                                                                                          Container(
                                                                                                            width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              image: DecorationImage(
                                                                                                                fit: BoxFit.cover,
                                                                                                                image: Image.asset(
                                                                                                                  'assets/images/vivid-blurred-colorful-wallpaper-background_(1)_1.png',
                                                                                                                ).image,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                              border: Border.all(
                                                                                                                color: Colors.transparent,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsets.all(15.0),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  Text(
                                                                                                                    listViewNoteMessagesRecord.aIResponse,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Manrope',
                                                                                                                          color: const Color(0xFF2D3E68),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.w500,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                          lineHeight: 2.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        if (listViewNoteMessagesRecord.aIResponse == '')
                                                                                                          Lottie.asset(
                                                                                                            'assets/lottie_animations/animation_llhjfl65.json',
                                                                                                            width: 40.0,
                                                                                                            height: 40.0,
                                                                                                            fit: BoxFit.cover,
                                                                                                            animate: true,
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      controller: _model.listViewController2,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                        decoration: const BoxDecoration(
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                        child: TextFormField(
                                                                                          controller: _model.messageinputmobileController,
                                                                                          focusNode: _model.messageinputmobileFocusNode,
                                                                                          autofocus: true,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Message Cognitiv.ly',
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  color: const Color(0xFF969696),
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                                ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0xFFC1C1C1),
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0xFF777777),
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF646464),
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                          validator: _model.messageinputmobileControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('NOTE_EDITOR_PAGE_Image_vse0oxp8_ON_TAP');
                                                                                          logFirebaseEvent('Image_backend_call');

                                                                                          var noteMessagesRecordReference = NoteMessagesRecord.collection.doc();
                                                                                          await noteMessagesRecordReference.set(createNoteMessagesRecordData(
                                                                                            sessionNote: widget.notedocument?.reference,
                                                                                            user: currentUserReference,
                                                                                            message: _model.messageinputmobileController.text,
                                                                                            date: getCurrentTimestamp,
                                                                                          ));
                                                                                          _model.notemessagemobile = NoteMessagesRecord.getDocumentFromData(
                                                                                              createNoteMessagesRecordData(
                                                                                                sessionNote: widget.notedocument?.reference,
                                                                                                user: currentUserReference,
                                                                                                message: _model.messageinputmobileController.text,
                                                                                                date: getCurrentTimestamp,
                                                                                              ),
                                                                                              noteMessagesRecordReference);
                                                                                          logFirebaseEvent('Image_backend_call');
                                                                                          _model.clinicalmessageAPIMobile = await NoteDialogueCall.call(
                                                                                            therapynote: functions.replaceDoubleQuotesLines(_model.rawnotemobileController.text),
                                                                                            message: functions.replaceDoubleQuotesLines(_model.messageinputmobileController.text),
                                                                                          );
                                                                                          if ((_model.clinicalmessageAPIMobile?.succeeded ?? true)) {
                                                                                            logFirebaseEvent('Image_backend_call');

                                                                                            await _model.notemessagemobile!.reference.update(createNoteMessagesRecordData(
                                                                                              aIResponse: NoteDialogueCall.response(
                                                                                                (_model.clinicalmessageAPIMobile?.jsonBody ?? ''),
                                                                                              ),
                                                                                            ));
                                                                                          }

                                                                                          setState(() {});
                                                                                        },
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                          child: SvgPicture.asset(
                                                                                            'assets/images/Right-Arrow-Narrow.svg',
                                                                                            width: 30.0,
                                                                                            height: 30.0,
                                                                                            fit: BoxFit.cover,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().notestep1processing == true)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xE2FFFFFF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      40.0, 80.0, 40.0, 40.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Ingesting note',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Parsing semantic and syntactic structure',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation5']!,
                                          hasBeenTriggered: hasRowTriggered5),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Composing Summary',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Restructuring raw text note',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation6']!,
                                          hasBeenTriggered: hasRowTriggered6),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Synthesizing DSM Clinical Concepts',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Merging note summary with clinical concepts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation7']!,
                                          hasBeenTriggered: hasRowTriggered7),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                'Finishing Up',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                colors: const [
                                                  Color(0xFF4F4F4F),
                                                  Color(0xFFABABAB)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: GradientText(
                                                  'Writing and encrypting note summary and diagnostic hypotheses',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  colors: const [
                                                    Color(0xFF6F6F6F),
                                                    Color(0xFFABABAB)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/animation_llcym624.json',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'rowOnActionTriggerAnimation8']!,
                                          hasBeenTriggered: hasRowTriggered8),
                                    ],
                                  ),
                                ),
                              ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation2']!,
                                  hasBeenTriggered: hasContainerTriggered2),
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
  }
}
