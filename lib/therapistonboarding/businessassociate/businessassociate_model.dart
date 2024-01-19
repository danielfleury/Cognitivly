import '/flutter_flow/flutter_flow_util.dart';
import 'businessassociate_widget.dart' show BusinessassociateWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class BusinessassociateModel extends FlutterFlowModel<BusinessassociateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  String uploadedSignatureUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    signatureController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
