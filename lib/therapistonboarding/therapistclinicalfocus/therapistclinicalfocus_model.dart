import '/flutter_flow/flutter_flow_util.dart';
import 'therapistclinicalfocus_widget.dart' show TherapistclinicalfocusWidget;
import 'package:flutter/material.dart';

class TherapistclinicalfocusModel
    extends FlutterFlowModel<TherapistclinicalfocusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for therapymodalities widget.
  FocusNode? therapymodalitiesFocusNode;
  TextEditingController? therapymodalitiesController;
  String? Function(BuildContext, String?)? therapymodalitiesControllerValidator;
  String? _therapymodalitiesControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for patientdemographics widget.
  FocusNode? patientdemographicsFocusNode;
  TextEditingController? patientdemographicsController;
  String? Function(BuildContext, String?)?
      patientdemographicsControllerValidator;
  String? _patientdemographicsControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for expertise widget.
  FocusNode? expertiseFocusNode;
  TextEditingController? expertiseController;
  String? Function(BuildContext, String?)? expertiseControllerValidator;
  String? _expertiseControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    therapymodalitiesControllerValidator =
        _therapymodalitiesControllerValidator;
    patientdemographicsControllerValidator =
        _patientdemographicsControllerValidator;
    expertiseControllerValidator = _expertiseControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    therapymodalitiesFocusNode?.dispose();
    therapymodalitiesController?.dispose();

    patientdemographicsFocusNode?.dispose();
    patientdemographicsController?.dispose();

    expertiseFocusNode?.dispose();
    expertiseController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
