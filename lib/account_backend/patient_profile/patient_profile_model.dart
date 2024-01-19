import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'patient_profile_widget.dart' show PatientProfileWidget;
import 'package:flutter/material.dart';

class PatientProfileModel extends FlutterFlowModel<PatientProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Cloud Function - retrieveEditPatientDocRegistration] action in Button widget.
  RetrieveEditPatientDocRegistrationCloudFunctionCallResponse? patientdocfound;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientDocumentsRecord? createdpatientdoc;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for PageviewMobile widget.
  PageController? pageviewMobileController;

  int get pageviewMobileCurrentIndex => pageviewMobileController != null &&
          pageviewMobileController!.hasClients &&
          pageviewMobileController!.page != null
      ? pageviewMobileController!.page!.round()
      : 0;
  DateTime? datePicked2;
  // State field(s) for DropdownMobile widget.
  String? dropdownMobileValue;
  FormFieldController<String>? dropdownMobileValueController;
  // State field(s) for DisplayNameMobile widget.
  FocusNode? displayNameMobileFocusNode;
  TextEditingController? displayNameMobileController;
  String? Function(BuildContext, String?)? displayNameMobileControllerValidator;
  String? _displayNameMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for AccessCodeMobile widget.
  FocusNode? accessCodeMobileFocusNode;
  TextEditingController? accessCodeMobileController;
  String? Function(BuildContext, String?)? accessCodeMobileControllerValidator;
  // Stores action output result for [Cloud Function - retrieveEditPatientDocRegistration] action in Button widget.
  RetrieveEditPatientDocRegistrationCloudFunctionCallResponse?
      patientdocfoundmobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientDocumentsRecord? createdpatientdocmobile;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    displayNameMobileControllerValidator =
        _displayNameMobileControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    displayNameMobileFocusNode?.dispose();
    displayNameMobileController?.dispose();

    accessCodeMobileFocusNode?.dispose();
    accessCodeMobileController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
