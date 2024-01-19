import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/rate_note_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'psychotherapy_note_popup_model.dart';
export 'psychotherapy_note_popup_model.dart';

class PsychotherapyNotePopupWidget extends StatefulWidget {
  const PsychotherapyNotePopupWidget({
    super.key,
    required this.sessiondocument,
    required this.patientdoc,
  });

  final SessionNotesRecord? sessiondocument;
  final PatientDocumentsRecord? patientdoc;

  @override
  _PsychotherapyNotePopupWidgetState createState() =>
      _PsychotherapyNotePopupWidgetState();
}

class _PsychotherapyNotePopupWidgetState
    extends State<PsychotherapyNotePopupWidget> {
  late PsychotherapyNotePopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PsychotherapyNotePopupModel());

    _model.rawnoteFocusNode ??= FocusNode();

    _model.feedbackChannelController ??= TextEditingController();
    _model.feedbackChannelFocusNode ??= FocusNode();

    _model.noteregenerationController ??= TextEditingController();
    _model.noteregenerationFocusNode ??= FocusNode();

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
        color: Color(0xBEFFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: StreamBuilder<SessionNotesRecord>(
              stream: SessionNotesRecord.getDocument(
                  widget.sessiondocument!.reference),
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
                final containerSessionNotesRecord = snapshot.data!;
                return Container(
                  width: MediaQuery.sizeOf(context).width * 0.96,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Generated Psychotherapy Note',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF505050),
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 20.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 25.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 30.0;
                                              } else {
                                                return 30.0;
                                              }
                                            }(),
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
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
                                            'PSYCHOTHERAPY_NOTE_POPUP_CopyPsychothera');
                                        logFirebaseEvent(
                                            'CopyPsychotherapy_copy_to_clipboard');
                                        await Clipboard.setData(ClipboardData(
                                            text:
                                                _model.rawnoteController.text));
                                        logFirebaseEvent(
                                            'CopyPsychotherapy_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Psychotherapy Note Copied to Clipboard',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: const Color(0xFFF0F0F0),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFF454545),
                                          ),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.content_copy_outlined,
                                        color: Color(0xFF868686),
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.auto_awesome_outlined,
                                      color: Color(0xFF6E6E6E),
                                      size: 20.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Psychotherapy note generation is currently in beta and may not be precise for nuanced clinical descriptions',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0xFF6C6C6C),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.warning_rounded,
                                      color: Color(0xFF6E6E6E),
                                      size: 14.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'AI-generated recommendations should never be used as a replacement for human consultation',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0xFF6C6C6C),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.65,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: TextFormField(
                                        controller: _model.rawnoteController ??=
                                            TextEditingController(
                                          text: containerSessionNotesRecord
                                              .aiPsychotherapyNote,
                                        ),
                                        focusNode: _model.rawnoteFocusNode,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF7D7D7D),
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
                                                  .labelMedium,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF7D7D7D),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.8,
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 15,
                                        validator: _model
                                            .rawnoteControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 15.0,
                                              color: Color(0xE0E7E9F2),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ),
                                          child: Stack(
                                            children: [
                                              if (_model.feedback == false)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 30.0,
                                                          20.0, 30.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'General Feedback',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
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
                                                                    'Your input will help us improve our language modeling',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF969696),
                                                                          fontSize:
                                                                              10.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .feedback_outlined,
                                                            color: Color(
                                                                0xFF969696),
                                                            size: 18.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .feedbackChannelController,
                                                          focusNode: _model
                                                              .feedbackChannelFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            hintText:
                                                                'Send feedback',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
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
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xFFC1C1C1),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xFFD4D4D4),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
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
                                                                    0xFF646464),
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
                                                          maxLines: 10,
                                                          validator: _model
                                                              .feedbackChannelControllerValidator
                                                              .asValidator(
                                                                  context),
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
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOTHERAPY_NOTE_POPUP_Image_l790rj6n_');
                                                            logFirebaseEvent(
                                                                'Image_update_component_state');
                                                            setState(() {
                                                              _model.feedback =
                                                                  true;
                                                            });
                                                            logFirebaseEvent(
                                                                'Image_backend_call');

                                                            await widget
                                                                .sessiondocument!
                                                                .reference
                                                                .update(
                                                                    createSessionNotesRecordData(
                                                              generalFeedback:
                                                                  _model
                                                                      .feedbackChannelController
                                                                      .text,
                                                            ));
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
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
                                              if (_model.feedback == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 30.0,
                                                          20.0, 30.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Thanks for your input',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
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
                                                                    'Your suggestions are helpful in creating more helpful responses',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF969696),
                                                                          fontSize:
                                                                              10.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .feedback_outlined,
                                                            color: Color(
                                                                0xFF969696),
                                                            size: 18.0,
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
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: const Color(0xFFE2E5EB),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 10.0, 15.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.35,
                                            child: TextFormField(
                                              controller: _model
                                                  .noteregenerationController,
                                              focusNode: _model
                                                  .noteregenerationFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText:
                                                    'Regenerate this note from feedback...',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF8F8F8F),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0.0, 0.0, 0.0,
                                                            10.0),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF6D6D6D),
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                              validator: _model
                                                  .noteregenerationControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            if (FFAppState().noteregenerating ==
                                                false)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'PSYCHOTHERAPY_NOTE_POPUP_Image_uvveju5k_');
                                                  logFirebaseEvent(
                                                      'Image_validate_form');
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  logFirebaseEvent(
                                                      'Image_update_app_state');
                                                  setState(() {
                                                    FFAppState()
                                                            .noteregenerating =
                                                        true;
                                                  });
                                                  logFirebaseEvent(
                                                      'Image_backend_call');
                                                  _model.regeneratednote =
                                                      await PsychotherapyNoteRegenerationCall
                                                          .call(
                                                    therapynote: functions
                                                        .replaceLineBreaks(functions
                                                            .replaceDoubleQuotesLines(
                                                                _model
                                                                    .rawnoteController
                                                                    .text)),
                                                    feedback: functions
                                                        .replaceLineBreaks(functions
                                                            .replaceDoubleQuotesLines(
                                                                _model
                                                                    .noteregenerationController
                                                                    .text)),
                                                  );
                                                  logFirebaseEvent(
                                                      'Image_backend_call');

                                                  await containerSessionNotesRecord
                                                      .reference
                                                      .update(
                                                          createSessionNotesRecordData(
                                                    aiPsychotherapyNote:
                                                        PsychotherapyNoteRegenerationCall
                                                            .regeneratedpsychotherapynote(
                                                      (_model.regeneratednote
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                  ));
                                                  logFirebaseEvent(
                                                      'Image_update_app_state');
                                                  setState(() {
                                                    FFAppState()
                                                            .noteregenerating =
                                                        false;
                                                  });
                                                  logFirebaseEvent(
                                                      'Image_bottom_sheet');
                                                  Navigator.pop(context);
                                                  logFirebaseEvent(
                                                      'Image_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: SizedBox(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1.0,
                                                          child:
                                                              PsychotherapyNotePopupWidget(
                                                            sessiondocument: widget
                                                                .sessiondocument!,
                                                            patientdoc: widget
                                                                .patientdoc!,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));

                                                  setState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Right-Arrow-Narrow.svg',
                                                    width: 30.0,
                                                    height: 30.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().noteregenerating ==
                                                true)
                                              Lottie.asset(
                                                'assets/lottie_animations/animation_llhjfl65.json',
                                                width: 33.0,
                                                height: 40.0,
                                                fit: BoxFit.contain,
                                                animate: true,
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'PSYCHOTHERAPY_NOTE_POPUP_DONE_BTN_ON_TAP');
                                    logFirebaseEvent('Button_backend_call');

                                    await widget.sessiondocument!.reference
                                        .update(createSessionNotesRecordData(
                                      aiPsychotherapyNote:
                                          _model.rawnoteController.text,
                                    ));
                                    logFirebaseEvent('Button_bottom_sheet');
                                    Navigator.pop(context);
                                    logFirebaseEvent('Button_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: const Color(0x37000000),
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            child: RateNoteWidget(
                                              sessionnotepass:
                                                  widget.sessiondocument!,
                                              patientdoc: widget.patientdoc!,
                                              notettype: 'Psychotherapy Note',
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  text: 'Done',
                                  icon: const Icon(
                                    Icons.check_sharp,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    padding: const EdgeInsets.all(30.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFECF5FF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xA11E3A7F),
                                          fontWeight: FontWeight.w600,
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
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PSYCHOTHERAPY_NOTE_POPUP_Icon_irtd95yl_O');
                            logFirebaseEvent('Icon_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Icon_update_component_state');
                            setState(() {
                              _model.feedback = false;
                            });
                          },
                          child: Icon(
                            Icons.close_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
