import '/flutter_flow/flutter_flow_util.dart';
import 'rate_note_widget.dart' show RateNoteWidget;
import 'package:flutter/material.dart';

class RateNoteModel extends FlutterFlowModel<RateNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SessionNoteRating widget.
  double? sessionNoteRatingValue;
  // State field(s) for SessionNoteTextFeedback widget.
  FocusNode? sessionNoteTextFeedbackFocusNode;
  TextEditingController? sessionNoteTextFeedbackController;
  String? Function(BuildContext, String?)?
      sessionNoteTextFeedbackControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    sessionNoteTextFeedbackFocusNode?.dispose();
    sessionNoteTextFeedbackController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
