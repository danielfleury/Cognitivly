import '/flutter_flow/flutter_flow_util.dart';
import 'custom_note_pop_up_widget.dart' show CustomNotePopUpWidget;
import 'package:flutter/material.dart';

class CustomNotePopUpModel extends FlutterFlowModel<CustomNotePopUpWidget> {
  ///  Local state fields for this component.

  bool feedback = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for rawnote widget.
  FocusNode? rawnoteFocusNode;
  TextEditingController? rawnoteController;
  String? Function(BuildContext, String?)? rawnoteControllerValidator;
  // State field(s) for FeedbackChannel widget.
  FocusNode? feedbackChannelFocusNode;
  TextEditingController? feedbackChannelController;
  String? Function(BuildContext, String?)? feedbackChannelControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rawnoteFocusNode?.dispose();
    rawnoteController?.dispose();

    feedbackChannelFocusNode?.dispose();
    feedbackChannelController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
