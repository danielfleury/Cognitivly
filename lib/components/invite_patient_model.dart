import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invite_patient_widget.dart' show InvitePatientWidget;
import 'package:flutter/material.dart';

class InvitePatientModel extends FlutterFlowModel<InvitePatientWidget> {
  ///  Local state fields for this component.

  bool feedback = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UsercodesRecord? aPIRef;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
