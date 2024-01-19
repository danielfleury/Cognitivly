import '/flutter_flow/flutter_flow_util.dart';
import 'therapistworksetting_widget.dart' show TherapistworksettingWidget;
import 'package:flutter/material.dart';

class TherapistworksettingModel
    extends FlutterFlowModel<TherapistworksettingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for practicename widget.
  FocusNode? practicenameFocusNode;
  TextEditingController? practicenameController;
  String? Function(BuildContext, String?)? practicenameControllerValidator;
  String? _practicenameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for practicetype widget.
  FocusNode? practicetypeFocusNode;
  TextEditingController? practicetypeController;
  String? Function(BuildContext, String?)? practicetypeControllerValidator;
  String? _practicetypeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for practiceaddress widget.
  FocusNode? practiceaddressFocusNode;
  TextEditingController? practiceaddressController;
  String? Function(BuildContext, String?)? practiceaddressControllerValidator;
  String? _practiceaddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for clientsweek widget.
  FocusNode? clientsweekFocusNode;
  TextEditingController? clientsweekController;
  String? Function(BuildContext, String?)? clientsweekControllerValidator;
  String? _clientsweekControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    practicenameControllerValidator = _practicenameControllerValidator;
    practicetypeControllerValidator = _practicetypeControllerValidator;
    practiceaddressControllerValidator = _practiceaddressControllerValidator;
    clientsweekControllerValidator = _clientsweekControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    practicenameFocusNode?.dispose();
    practicenameController?.dispose();

    practicetypeFocusNode?.dispose();
    practicetypeController?.dispose();

    practiceaddressFocusNode?.dispose();
    practiceaddressController?.dispose();

    clientsweekFocusNode?.dispose();
    clientsweekController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
