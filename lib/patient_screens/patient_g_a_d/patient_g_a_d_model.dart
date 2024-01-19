import '/flutter_flow/flutter_flow_util.dart';
import 'patient_g_a_d_widget.dart' show PatientGADWidget;
import 'package:flutter/material.dart';

class PatientGADModel extends FlutterFlowModel<PatientGADWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
