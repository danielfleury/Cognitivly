import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patient_intake_widget.dart' show PatientIntakeWidget;
import 'package:flutter/material.dart';

class PatientIntakeModel extends FlutterFlowModel<PatientIntakeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;
  // State field(s) for Slider widget.
  double? sliderValue4;
  // State field(s) for Slider widget.
  double? sliderValue5;
  // State field(s) for Slider widget.
  double? sliderValue6;
  // State field(s) for Slider widget.
  double? sliderValue7;
  // State field(s) for Slider widget.
  double? sliderValue8;
  // State field(s) for Slider widget.
  double? sliderValue9;
  // State field(s) for chatlogsmaster widget.
  ScrollController? chatlogsmaster;
  // State field(s) for ChatLogs widget.
  ScrollController? chatLogs;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Cloud Function - assessmentAgent] action in Image widget.
  AssessmentAgentCloudFunctionCallResponse? assessmentconversation;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    chatlogsmaster = ScrollController();
    chatLogs = ScrollController();
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatlogsmaster?.dispose();
    chatLogs?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
