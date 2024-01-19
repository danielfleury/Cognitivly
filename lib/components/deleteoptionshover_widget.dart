import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'deleteoptionshover_model.dart';
export 'deleteoptionshover_model.dart';

class DeleteoptionshoverWidget extends StatefulWidget {
  const DeleteoptionshoverWidget({super.key});

  @override
  _DeleteoptionshoverWidgetState createState() =>
      _DeleteoptionshoverWidgetState();
}

class _DeleteoptionshoverWidgetState extends State<DeleteoptionshoverWidget> {
  late DeleteoptionshoverModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteoptionshoverModel());

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

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.deleteNoteHoverHovered = true);
        logFirebaseEvent('DELETEOPTIONSHOVER_DeleteNoteHover_ON_TO');
        logFirebaseEvent('DeleteNoteHover_update_app_state');
        setState(() {
          FFAppState().noteoptionshover = true;
        });
      }),
      onExit: ((event) async {
        setState(() => _model.deleteNoteHoverHovered = false);
        logFirebaseEvent('DELETEOPTIONSHOVER_DeleteNoteHover_ON_TO');
        logFirebaseEvent('DeleteNoteHover_update_app_state');
        setState(() {
          FFAppState().noteoptionshover = false;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.delete_outline_outlined,
                  color: Color(0xFF646464),
                  size: 16.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Delete Note',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF646464),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
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
