import '/backend/api_requests/api_calls.dart';
import '/components/soap_note_popup_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'soap_note_popup_widget.dart' show SoapNotePopupWidget;
import 'package:flutter/material.dart';

class SoapNotePopupModel extends FlutterFlowModel<SoapNotePopupWidget> {
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
  String? _noteregenerationControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (SOAPNoteRegeneration)] action in Image widget.
  ApiCallResponse? regeneratednote;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    noteregenerationControllerValidator = _noteregenerationControllerValidator;
  }

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
