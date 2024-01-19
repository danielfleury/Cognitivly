import '/flutter_flow/flutter_flow_util.dart';
import 'compliant_treatment_plan_widget.dart' show CompliantTreatmentPlanWidget;
import 'package:flutter/material.dart';

class CompliantTreatmentPlanModel
    extends FlutterFlowModel<CompliantTreatmentPlanWidget> {
  ///  Local state fields for this component.

  bool feedback = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for rawnote widget.
  FocusNode? rawnoteFocusNode;
  TextEditingController? rawnoteController;
  String? Function(BuildContext, String?)? rawnoteControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rawnoteFocusNode?.dispose();
    rawnoteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
