import '/flutter_flow/flutter_flow_util.dart';
import 'business_associate_agreement_widget.dart'
    show BusinessAssociateAgreementWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class BusinessAssociateAgreementModel
    extends FlutterFlowModel<BusinessAssociateAgreementWidget> {
  ///  Local state fields for this component.

  bool feedback = false;

  ///  State fields for stateful widgets in this component.

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
    signatureController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
