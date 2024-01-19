import '/flutter_flow/flutter_flow_util.dart';
import 'therapistprofessionalbackground_widget.dart'
    show TherapistprofessionalbackgroundWidget;
import 'package:flutter/material.dart';

class TherapistprofessionalbackgroundModel
    extends FlutterFlowModel<TherapistprofessionalbackgroundWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for yearsofpractice widget.
  FocusNode? yearsofpracticeFocusNode;
  TextEditingController? yearsofpracticeController;
  String? Function(BuildContext, String?)? yearsofpracticeControllerValidator;
  String? _yearsofpracticeControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for educationalbackground widget.
  FocusNode? educationalbackgroundFocusNode;
  TextEditingController? educationalbackgroundController;
  String? Function(BuildContext, String?)?
      educationalbackgroundControllerValidator;
  String? _educationalbackgroundControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    yearsofpracticeControllerValidator = _yearsofpracticeControllerValidator;
    educationalbackgroundControllerValidator =
        _educationalbackgroundControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yearsofpracticeFocusNode?.dispose();
    yearsofpracticeController?.dispose();

    educationalbackgroundFocusNode?.dispose();
    educationalbackgroundController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
