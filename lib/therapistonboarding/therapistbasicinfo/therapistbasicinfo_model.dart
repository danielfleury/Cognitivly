import '/flutter_flow/flutter_flow_util.dart';
import 'therapistbasicinfo_widget.dart' show TherapistbasicinfoWidget;
import 'package:flutter/material.dart';

class TherapistbasicinfoModel
    extends FlutterFlowModel<TherapistbasicinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FullNameConfirm widget.
  FocusNode? fullNameConfirmFocusNode;
  TextEditingController? fullNameConfirmController;
  String? Function(BuildContext, String?)? fullNameConfirmControllerValidator;
  String? _fullNameConfirmControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailconfirm widget.
  FocusNode? emailconfirmFocusNode;
  TextEditingController? emailconfirmController;
  String? Function(BuildContext, String?)? emailconfirmControllerValidator;
  String? _emailconfirmControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for PracticeLicense widget.
  FocusNode? practiceLicenseFocusNode;
  TextEditingController? practiceLicenseController;
  String? Function(BuildContext, String?)? practiceLicenseControllerValidator;
  String? _practiceLicenseControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ProfessionalTitle widget.
  FocusNode? professionalTitleFocusNode;
  TextEditingController? professionalTitleController;
  String? Function(BuildContext, String?)? professionalTitleControllerValidator;
  String? _professionalTitleControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullNameConfirmControllerValidator = _fullNameConfirmControllerValidator;
    emailconfirmControllerValidator = _emailconfirmControllerValidator;
    practiceLicenseControllerValidator = _practiceLicenseControllerValidator;
    professionalTitleControllerValidator =
        _professionalTitleControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameConfirmFocusNode?.dispose();
    fullNameConfirmController?.dispose();

    emailconfirmFocusNode?.dispose();
    emailconfirmController?.dispose();

    practiceLicenseFocusNode?.dispose();
    practiceLicenseController?.dispose();

    professionalTitleFocusNode?.dispose();
    professionalTitleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
