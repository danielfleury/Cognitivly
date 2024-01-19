import '/backend/api_requests/api_calls.dart';
import '/components/birp_note_popup_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'birp_note_popup_widget.dart' show BirpNotePopupWidget;
import 'package:flutter/material.dart';

class BirpNotePopupModel extends FlutterFlowModel<BirpNotePopupWidget> {
  ///  Local state fields for this component.

  bool feedback = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for rawnote widget.
  FocusNode? rawnoteFocusNode;
  TextEditingController? rawnoteController;
  String? Function(BuildContext, String?)? rawnoteControllerValidator;
  // State field(s) for FeedbackChannel widget.
  FocusNode? feedbackChannelFocusNode;
  TextEditingController? feedbackChannelController;
  String? Function(BuildContext, String?)? feedbackChannelControllerValidator;
  // State field(s) for noteregeneration widget.
  FocusNode? noteregenerationFocusNode;
  TextEditingController? noteregenerationController;
  String? Function(BuildContext, String?)? noteregenerationControllerValidator;
  // Stores action output result for [Backend Call - API (BIRPNoteRegeneration)] action in Image widget.
  ApiCallResponse? regeneratednote;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rawnoteFocusNode?.dispose();
    rawnoteController?.dispose();

    feedbackChannelFocusNode?.dispose();
    feedbackChannelController?.dispose();

    noteregenerationFocusNode?.dispose();
    noteregenerationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
