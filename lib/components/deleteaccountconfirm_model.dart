import '/flutter_flow/flutter_flow_util.dart';
import 'deleteaccountconfirm_widget.dart' show DeleteaccountconfirmWidget;
import 'package:flutter/material.dart';

class DeleteaccountconfirmModel
    extends FlutterFlowModel<DeleteaccountconfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for deleteaccountconfir widget.
  FocusNode? deleteaccountconfirFocusNode;
  TextEditingController? deleteaccountconfirController;
  String? Function(BuildContext, String?)?
      deleteaccountconfirControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    deleteaccountconfirFocusNode?.dispose();
    deleteaccountconfirController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
