import '/flutter_flow/flutter_flow_util.dart';
import 'practitioner_profile_widget.dart' show PractitionerProfileWidget;
import 'package:flutter/material.dart';

class PractitionerProfileModel
    extends FlutterFlowModel<PractitionerProfileWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode1;
  TextEditingController? practitionerNameController1;
  String? Function(BuildContext, String?)? practitionerNameController1Validator;
  // State field(s) for PractitionerEmail widget.
  FocusNode? practitionerEmailFocusNode1;
  TextEditingController? practitionerEmailController1;
  String? Function(BuildContext, String?)?
      practitionerEmailController1Validator;
  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode2;
  TextEditingController? practitionerNameController2;
  String? Function(BuildContext, String?)? practitionerNameController2Validator;
  // State field(s) for PractitionerEmail widget.
  FocusNode? practitionerEmailFocusNode2;
  TextEditingController? practitionerEmailController2;
  String? Function(BuildContext, String?)?
      practitionerEmailController2Validator;
  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode3;
  TextEditingController? practitionerNameController3;
  String? Function(BuildContext, String?)? practitionerNameController3Validator;
  String? _practitionerNameController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerEmail widget.
  FocusNode? practitionerEmailFocusNode3;
  TextEditingController? practitionerEmailController3;
  String? Function(BuildContext, String?)?
      practitionerEmailController3Validator;
  String? _practitionerEmailController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode4;
  TextEditingController? practitionerNameController4;
  String? Function(BuildContext, String?)? practitionerNameController4Validator;
  String? _practitionerNameController4Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode5;
  TextEditingController? practitionerNameController5;
  String? Function(BuildContext, String?)? practitionerNameController5Validator;
  String? _practitionerNameController5Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerEmail widget.
  FocusNode? practitionerEmailFocusNode4;
  TextEditingController? practitionerEmailController4;
  String? Function(BuildContext, String?)?
      practitionerEmailController4Validator;
  String? _practitionerEmailController4Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode6;
  TextEditingController? practitionerNameController6;
  String? Function(BuildContext, String?)? practitionerNameController6Validator;
  String? _practitionerNameController6Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerEmail widget.
  FocusNode? practitionerEmailFocusNode5;
  TextEditingController? practitionerEmailController5;
  String? Function(BuildContext, String?)?
      practitionerEmailController5Validator;
  String? _practitionerEmailController5Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerName widget.
  FocusNode? practitionerNameFocusNode7;
  TextEditingController? practitionerNameController7;
  String? Function(BuildContext, String?)? practitionerNameController7Validator;
  String? _practitionerNameController7Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for PractitionerNameMobile widget.
  FocusNode? practitionerNameMobileFocusNode;
  TextEditingController? practitionerNameMobileController;
  String? Function(BuildContext, String?)?
      practitionerNameMobileControllerValidator;
  String? _practitionerNameMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PractitionerEmailMobile widget.
  FocusNode? practitionerEmailMobileFocusNode;
  TextEditingController? practitionerEmailMobileController;
  String? Function(BuildContext, String?)?
      practitionerEmailMobileControllerValidator;
  String? _practitionerEmailMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LicenseNumberMobile widget.
  FocusNode? licenseNumberMobileFocusNode;
  TextEditingController? licenseNumberMobileController;
  String? Function(BuildContext, String?)?
      licenseNumberMobileControllerValidator;
  String? _licenseNumberMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TitleMobile widget.
  FocusNode? titleMobileFocusNode;
  TextEditingController? titleMobileController;
  String? Function(BuildContext, String?)? titleMobileControllerValidator;
  String? _titleMobileControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ExpertiseMobile widget.
  FocusNode? expertiseMobileFocusNode;
  TextEditingController? expertiseMobileController;
  String? Function(BuildContext, String?)? expertiseMobileControllerValidator;
  String? _expertiseMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ModalitiesMobile widget.
  FocusNode? modalitiesMobileFocusNode;
  TextEditingController? modalitiesMobileController;
  String? Function(BuildContext, String?)? modalitiesMobileControllerValidator;
  String? _modalitiesMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DemographicsMobile widget.
  FocusNode? demographicsMobileFocusNode;
  TextEditingController? demographicsMobileController;
  String? Function(BuildContext, String?)?
      demographicsMobileControllerValidator;
  String? _demographicsMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Educationmobile widget.
  FocusNode? educationmobileFocusNode;
  TextEditingController? educationmobileController;
  String? Function(BuildContext, String?)? educationmobileControllerValidator;
  String? _educationmobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for YearsofPracticeMobile widget.
  FocusNode? yearsofPracticeMobileFocusNode;
  TextEditingController? yearsofPracticeMobileController;
  String? Function(BuildContext, String?)?
      yearsofPracticeMobileControllerValidator;
  String? _yearsofPracticeMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ClientsPerWeekMobile widget.
  FocusNode? clientsPerWeekMobileFocusNode;
  TextEditingController? clientsPerWeekMobileController;
  String? Function(BuildContext, String?)?
      clientsPerWeekMobileControllerValidator;
  String? _clientsPerWeekMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PracticeTypeMobile widget.
  FocusNode? practiceTypeMobileFocusNode;
  TextEditingController? practiceTypeMobileController;
  String? Function(BuildContext, String?)?
      practiceTypeMobileControllerValidator;
  String? _practiceTypeMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PracticeAddressMobile widget.
  FocusNode? practiceAddressMobileFocusNode;
  TextEditingController? practiceAddressMobileController;
  String? Function(BuildContext, String?)?
      practiceAddressMobileControllerValidator;
  String? _practiceAddressMobileControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    practitionerNameController3Validator =
        _practitionerNameController3Validator;
    practitionerEmailController3Validator =
        _practitionerEmailController3Validator;
    practitionerNameController4Validator =
        _practitionerNameController4Validator;
    practitionerNameController5Validator =
        _practitionerNameController5Validator;
    practitionerEmailController4Validator =
        _practitionerEmailController4Validator;
    practitionerNameController6Validator =
        _practitionerNameController6Validator;
    practitionerEmailController5Validator =
        _practitionerEmailController5Validator;
    practitionerNameController7Validator =
        _practitionerNameController7Validator;
    practitionerNameMobileControllerValidator =
        _practitionerNameMobileControllerValidator;
    practitionerEmailMobileControllerValidator =
        _practitionerEmailMobileControllerValidator;
    licenseNumberMobileControllerValidator =
        _licenseNumberMobileControllerValidator;
    titleMobileControllerValidator = _titleMobileControllerValidator;
    expertiseMobileControllerValidator = _expertiseMobileControllerValidator;
    modalitiesMobileControllerValidator = _modalitiesMobileControllerValidator;
    demographicsMobileControllerValidator =
        _demographicsMobileControllerValidator;
    educationmobileControllerValidator = _educationmobileControllerValidator;
    yearsofPracticeMobileControllerValidator =
        _yearsofPracticeMobileControllerValidator;
    clientsPerWeekMobileControllerValidator =
        _clientsPerWeekMobileControllerValidator;
    practiceTypeMobileControllerValidator =
        _practiceTypeMobileControllerValidator;
    practiceAddressMobileControllerValidator =
        _practiceAddressMobileControllerValidator;
  }

  @override
  void dispose() {
    practitionerNameFocusNode1?.dispose();
    practitionerNameController1?.dispose();

    practitionerEmailFocusNode1?.dispose();
    practitionerEmailController1?.dispose();

    practitionerNameFocusNode2?.dispose();
    practitionerNameController2?.dispose();

    practitionerEmailFocusNode2?.dispose();
    practitionerEmailController2?.dispose();

    practitionerNameFocusNode3?.dispose();
    practitionerNameController3?.dispose();

    practitionerEmailFocusNode3?.dispose();
    practitionerEmailController3?.dispose();

    practitionerNameFocusNode4?.dispose();
    practitionerNameController4?.dispose();

    practitionerNameFocusNode5?.dispose();
    practitionerNameController5?.dispose();

    practitionerEmailFocusNode4?.dispose();
    practitionerEmailController4?.dispose();

    practitionerNameFocusNode6?.dispose();
    practitionerNameController6?.dispose();

    practitionerEmailFocusNode5?.dispose();
    practitionerEmailController5?.dispose();

    practitionerNameFocusNode7?.dispose();
    practitionerNameController7?.dispose();

    practitionerNameMobileFocusNode?.dispose();
    practitionerNameMobileController?.dispose();

    practitionerEmailMobileFocusNode?.dispose();
    practitionerEmailMobileController?.dispose();

    licenseNumberMobileFocusNode?.dispose();
    licenseNumberMobileController?.dispose();

    titleMobileFocusNode?.dispose();
    titleMobileController?.dispose();

    expertiseMobileFocusNode?.dispose();
    expertiseMobileController?.dispose();

    modalitiesMobileFocusNode?.dispose();
    modalitiesMobileController?.dispose();

    demographicsMobileFocusNode?.dispose();
    demographicsMobileController?.dispose();

    educationmobileFocusNode?.dispose();
    educationmobileController?.dispose();

    yearsofPracticeMobileFocusNode?.dispose();
    yearsofPracticeMobileController?.dispose();

    clientsPerWeekMobileFocusNode?.dispose();
    clientsPerWeekMobileController?.dispose();

    practiceTypeMobileFocusNode?.dispose();
    practiceTypeMobileController?.dispose();

    practiceAddressMobileFocusNode?.dispose();
    practiceAddressMobileController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
