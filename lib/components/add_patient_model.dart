import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_patient_widget.dart' show AddPatientWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddPatientModel extends FlutterFlowModel<AddPatientWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode1;
  TextEditingController? patientNameController1;
  String? Function(BuildContext, String?)? patientNameController1Validator;
  String? _patientNameController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for PatientGender widget.
  String? patientGenderValue1;
  FormFieldController<String>? patientGenderValueController1;
  // State field(s) for PatientPhone widget.
  FocusNode? patientPhoneFocusNode1;
  TextEditingController? patientPhoneController1;
  final patientPhoneMask1 = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? patientPhoneController1Validator;
  String? _patientPhoneController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PatientEmail widget.
  FocusNode? patientEmailFocusNode1;
  TextEditingController? patientEmailController1;
  String? Function(BuildContext, String?)? patientEmailController1Validator;
  String? _patientEmailController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for PatientAddress widget.
  FocusNode? patientAddressFocusNode1;
  TextEditingController? patientAddressController1;
  String? Function(BuildContext, String?)? patientAddressController1Validator;
  String? _patientAddressController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode2;
  TextEditingController? patientNameController2;
  String? Function(BuildContext, String?)? patientNameController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientDocumentsRecord? createdpatientdocument;
  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode3;
  TextEditingController? patientNameController3;
  String? Function(BuildContext, String?)? patientNameController3Validator;
  String? _patientNameController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for PatientGender widget.
  String? patientGenderValue2;
  FormFieldController<String>? patientGenderValueController2;
  // State field(s) for PatientPhone widget.
  FocusNode? patientPhoneFocusNode2;
  TextEditingController? patientPhoneController2;
  final patientPhoneMask2 = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? patientPhoneController2Validator;
  String? _patientPhoneController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PatientEmail widget.
  FocusNode? patientEmailFocusNode2;
  TextEditingController? patientEmailController2;
  String? Function(BuildContext, String?)? patientEmailController2Validator;
  String? _patientEmailController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PatientAddress widget.
  FocusNode? patientAddressFocusNode2;
  TextEditingController? patientAddressController2;
  String? Function(BuildContext, String?)? patientAddressController2Validator;
  String? _patientAddressController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode4;
  TextEditingController? patientNameController4;
  String? Function(BuildContext, String?)? patientNameController4Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientDocumentsRecord? createdpatientdocumentmobile;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    patientNameController1Validator = _patientNameController1Validator;
    patientPhoneController1Validator = _patientPhoneController1Validator;
    patientEmailController1Validator = _patientEmailController1Validator;
    patientAddressController1Validator = _patientAddressController1Validator;
    patientNameController3Validator = _patientNameController3Validator;
    patientPhoneController2Validator = _patientPhoneController2Validator;
    patientEmailController2Validator = _patientEmailController2Validator;
    patientAddressController2Validator = _patientAddressController2Validator;
  }

  @override
  void dispose() {
    patientNameFocusNode1?.dispose();
    patientNameController1?.dispose();

    patientPhoneFocusNode1?.dispose();
    patientPhoneController1?.dispose();

    patientEmailFocusNode1?.dispose();
    patientEmailController1?.dispose();

    patientAddressFocusNode1?.dispose();
    patientAddressController1?.dispose();

    patientNameFocusNode2?.dispose();
    patientNameController2?.dispose();

    patientNameFocusNode3?.dispose();
    patientNameController3?.dispose();

    patientPhoneFocusNode2?.dispose();
    patientPhoneController2?.dispose();

    patientEmailFocusNode2?.dispose();
    patientEmailController2?.dispose();

    patientAddressFocusNode2?.dispose();
    patientAddressController2?.dispose();

    patientNameFocusNode4?.dispose();
    patientNameController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
