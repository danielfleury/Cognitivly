import '/flutter_flow/flutter_flow_util.dart';
import 'edit_custom_template_widget.dart' show EditCustomTemplateWidget;
import 'package:flutter/material.dart';

class EditCustomTemplateModel
    extends FlutterFlowModel<EditCustomTemplateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TemplateTitle widget.
  FocusNode? templateTitleFocusNode;
  TextEditingController? templateTitleController;
  String? Function(BuildContext, String?)? templateTitleControllerValidator;
  String? _templateTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TemplateDescription widget.
  FocusNode? templateDescriptionFocusNode;
  TextEditingController? templateDescriptionController;
  String? Function(BuildContext, String?)?
      templateDescriptionControllerValidator;
  String? _templateDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TemplateExample widget.
  FocusNode? templateExampleFocusNode;
  TextEditingController? templateExampleController;
  String? Function(BuildContext, String?)? templateExampleControllerValidator;
  String? _templateExampleControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    templateTitleControllerValidator = _templateTitleControllerValidator;
    templateDescriptionControllerValidator =
        _templateDescriptionControllerValidator;
    templateExampleControllerValidator = _templateExampleControllerValidator;
  }

  @override
  void dispose() {
    templateTitleFocusNode?.dispose();
    templateTitleController?.dispose();

    templateDescriptionFocusNode?.dispose();
    templateDescriptionController?.dispose();

    templateExampleFocusNode?.dispose();
    templateExampleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
