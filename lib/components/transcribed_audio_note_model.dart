import '/flutter_flow/flutter_flow_util.dart';
import 'transcribed_audio_note_widget.dart' show TranscribedAudioNoteWidget;
import 'package:flutter/material.dart';

class TranscribedAudioNoteModel
    extends FlutterFlowModel<TranscribedAudioNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rawnoteweb widget.
  FocusNode? rawnotewebFocusNode;
  TextEditingController? rawnotewebController;
  String? Function(BuildContext, String?)? rawnotewebControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rawnotewebFocusNode?.dispose();
    rawnotewebController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
