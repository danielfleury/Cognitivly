import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noteoptions_model.dart';
export 'noteoptions_model.dart';

class NoteoptionsWidget extends StatefulWidget {
  const NoteoptionsWidget({
    super.key,
    required this.patientdocument,
    required this.patientnote,
  });

  final PatientDocumentsRecord? patientdocument;
  final SessionNotesRecord? patientnote;

  @override
  _NoteoptionsWidgetState createState() => _NoteoptionsWidgetState();
}

class _NoteoptionsWidgetState extends State<NoteoptionsWidget> {
  late NoteoptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteoptionsModel());

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
        color: Color(0x00FFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: const Color(0xFFE5E7ED),
                    width: 1.8,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'NOTEOPTIONS_Container_zpmpxxed_ON_TAP');
                          logFirebaseEvent('Container_alert_dialog');
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Delete Note'),
                                    content: const Text(
                                        'Are you sure you want to delete this note? This action is permanent.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: const Text('Yes, I\'m sure'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            logFirebaseEvent('Container_backend_call');
                            await widget.patientnote!.reference.delete();
                            logFirebaseEvent('Container_bottom_sheet');
                            Navigator.pop(context);
                          } else {
                            return;
                          }
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Color(0xFFE33E38),
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Delete Note',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFFBC2E29),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1.0,
                        color: Color(0xCCC1C1C1),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'NOTEOPTIONS_Container_5ytieyoy_ON_TAP');
                          logFirebaseEvent('Container_bottom_sheet');
                          Navigator.pop(context);
                          logFirebaseEvent('Container_navigate_to');

                          context.pushNamed(
                            'NoteEditor',
                            queryParameters: {
                              'notedocument': serializeParam(
                                widget.patientnote,
                                ParamType.Document,
                              ),
                              'patientdoc': serializeParam(
                                widget.patientdocument,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'notedocument': widget.patientnote,
                              'patientdoc': widget.patientdocument,
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Color(0xFF646464),
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Open Note',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1.0,
                        color: Color(0xCCC1C1C1),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'NOTEOPTIONS_Container_bqnh4p57_ON_TAP');
                          logFirebaseEvent('Container_bottom_sheet');
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Cancel',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF8B8B8B),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
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
            ),
          ],
        ),
      ),
    );
  }
}
