import '/flutter_flow/flutter_flow_util.dart';
import 'registration_widget.dart' show RegistrationWidget;
import 'package:flutter/material.dart';

class RegistrationModel extends FlutterFlowModel<RegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for fullnameweb widget.
  FocusNode? fullnamewebFocusNode;
  TextEditingController? fullnamewebController;
  String? Function(BuildContext, String?)? fullnamewebControllerValidator;
  String? _fullnamewebControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for useremailweb widget.
  FocusNode? useremailwebFocusNode;
  TextEditingController? useremailwebController;
  String? Function(BuildContext, String?)? useremailwebControllerValidator;
  String? _useremailwebControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for userpassweb widget.
  FocusNode? userpasswebFocusNode;
  TextEditingController? userpasswebController;
  late bool userpasswebVisibility;
  String? Function(BuildContext, String?)? userpasswebControllerValidator;
  String? _userpasswebControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for userpassconfirmweb widget.
  FocusNode? userpassconfirmwebFocusNode;
  TextEditingController? userpassconfirmwebController;
  late bool userpassconfirmwebVisibility;
  String? Function(BuildContext, String?)?
      userpassconfirmwebControllerValidator;
  String? _userpassconfirmwebControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for FullNameMobile widget.
  FocusNode? fullNameMobileFocusNode;
  TextEditingController? fullNameMobileController;
  String? Function(BuildContext, String?)? fullNameMobileControllerValidator;
  String? _fullNameMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for useremailregistermobile widget.
  FocusNode? useremailregistermobileFocusNode;
  TextEditingController? useremailregistermobileController;
  String? Function(BuildContext, String?)?
      useremailregistermobileControllerValidator;
  String? _useremailregistermobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for userpassregistermobile widget.
  FocusNode? userpassregistermobileFocusNode;
  TextEditingController? userpassregistermobileController;
  late bool userpassregistermobileVisibility;
  String? Function(BuildContext, String?)?
      userpassregistermobileControllerValidator;
  String? _userpassregistermobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for userpassconfirmregistermobile widget.
  FocusNode? userpassconfirmregistermobileFocusNode;
  TextEditingController? userpassconfirmregistermobileController;
  late bool userpassconfirmregistermobileVisibility;
  String? Function(BuildContext, String?)?
      userpassconfirmregistermobileControllerValidator;
  String? _userpassconfirmregistermobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullnamewebControllerValidator = _fullnamewebControllerValidator;
    useremailwebControllerValidator = _useremailwebControllerValidator;
    userpasswebVisibility = false;
    userpasswebControllerValidator = _userpasswebControllerValidator;
    userpassconfirmwebVisibility = false;
    userpassconfirmwebControllerValidator =
        _userpassconfirmwebControllerValidator;
    fullNameMobileControllerValidator = _fullNameMobileControllerValidator;
    useremailregistermobileControllerValidator =
        _useremailregistermobileControllerValidator;
    userpassregistermobileVisibility = false;
    userpassregistermobileControllerValidator =
        _userpassregistermobileControllerValidator;
    userpassconfirmregistermobileVisibility = false;
    userpassconfirmregistermobileControllerValidator =
        _userpassconfirmregistermobileControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullnamewebFocusNode?.dispose();
    fullnamewebController?.dispose();

    useremailwebFocusNode?.dispose();
    useremailwebController?.dispose();

    userpasswebFocusNode?.dispose();
    userpasswebController?.dispose();

    userpassconfirmwebFocusNode?.dispose();
    userpassconfirmwebController?.dispose();

    fullNameMobileFocusNode?.dispose();
    fullNameMobileController?.dispose();

    useremailregistermobileFocusNode?.dispose();
    useremailregistermobileController?.dispose();

    userpassregistermobileFocusNode?.dispose();
    userpassregistermobileController?.dispose();

    userpassconfirmregistermobileFocusNode?.dispose();
    userpassconfirmregistermobileController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
