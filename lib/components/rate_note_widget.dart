import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rate_note_model.dart';
export 'rate_note_model.dart';

class RateNoteWidget extends StatefulWidget {
  const RateNoteWidget({
    super.key,
    required this.sessionnotepass,
    required this.patientdoc,
    required this.notettype,
  });

  final SessionNotesRecord? sessionnotepass;
  final PatientDocumentsRecord? patientdoc;
  final String? notettype;

  @override
  _RateNoteWidgetState createState() => _RateNoteWidgetState();
}

class _RateNoteWidgetState extends State<RateNoteWidget> {
  late RateNoteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateNoteModel());

    _model.sessionNoteTextFeedbackController ??= TextEditingController();
    _model.sessionNoteTextFeedbackFocusNode ??= FocusNode();

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rate This Note',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF646464),
                          fontSize: 26.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Your feedback helps finetune our modeling capabilities to your documentation preferences',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        color: const Color(0xFF969696),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Very Poor',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Text(
                      'Neutral',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Text(
                      'Excellent',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Slider(
                      activeColor: const Color(0xFF3A3A3A),
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: 0.0,
                      max: 10.0,
                      value: _model.sessionNoteRatingValue ??= 5.0,
                      label: _model.sessionNoteRatingValue.toString(),
                      divisions: 10,
                      onChanged: (newValue) {
                        newValue = double.parse(newValue.toStringAsFixed(2));
                        setState(
                            () => _model.sessionNoteRatingValue = newValue);
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.sessionNoteTextFeedbackController,
                          focusNode: _model.sessionNoteTextFeedbackFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Additional Feedback (optional)',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF646464),
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                            hintText:
                                'e.g. Incorporate more trauma-informed care methodologies into the "plan" section of the note and make the "subjective" section shorter',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF969696),
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF969696),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          maxLines: 4,
                          validator: _model
                              .sessionNoteTextFeedbackControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('RATE_NOTE_COMP_SUBMIT_BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');

                    await widget.sessionnotepass!.reference.update({
                      ...mapToFirestore(
                        {
                          'feedback': FieldValue.arrayUnion([
                            '${widget.notettype}- Text Feedback: ${_model.sessionNoteTextFeedbackController.text} Rating: ${_model.sessionNoteRatingValue?.toString()}'
                          ]),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed(
                      'PatientNotes',
                      queryParameters: {
                        'patientdocument': serializeParam(
                          widget.patientdoc,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'patientdocument': widget.patientdoc,
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    logFirebaseEvent('Button_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Thank you for your feedback',
                          style: GoogleFonts.getFont(
                            'Manrope',
                            color: const Color(0xFFF7F7F7),
                            fontSize: 12.0,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: const Color(0xFF3A3A3A),
                      ),
                    );
                  },
                  text: 'Submit',
                  icon: const Icon(
                    Icons.check_sharp,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 50.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF646464),
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Color(0xFFCCD0DC),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
