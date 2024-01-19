import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for useremaillogin widget.
  FocusNode? useremailloginFocusNode;
  TextEditingController? useremailloginController;
  String? Function(BuildContext, String?)? useremailloginControllerValidator;
  // State field(s) for userpasslogin widget.
  FocusNode? userpassloginFocusNode;
  TextEditingController? userpassloginController;
  late bool userpassloginVisibility;
  String? Function(BuildContext, String?)? userpassloginControllerValidator;
  // State field(s) for useremailloginmobile widget.
  FocusNode? useremailloginmobileFocusNode;
  TextEditingController? useremailloginmobileController;
  String? Function(BuildContext, String?)?
      useremailloginmobileControllerValidator;
  // State field(s) for userpassloginmobile widget.
  FocusNode? userpassloginmobileFocusNode;
  TextEditingController? userpassloginmobileController;
  late bool userpassloginmobileVisibility;
  String? Function(BuildContext, String?)?
      userpassloginmobileControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userpassloginVisibility = false;
    userpassloginmobileVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    useremailloginFocusNode?.dispose();
    useremailloginController?.dispose();

    userpassloginFocusNode?.dispose();
    userpassloginController?.dispose();

    useremailloginmobileFocusNode?.dispose();
    useremailloginmobileController?.dispose();

    userpassloginmobileFocusNode?.dispose();
    userpassloginmobileController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
