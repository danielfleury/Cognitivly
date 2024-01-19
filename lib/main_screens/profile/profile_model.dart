import '/backend/backend.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UsercodesRecord? aPIRef;
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameController;
  String? Function(BuildContext, String?)? fullnameControllerValidator;
  String? _fullnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for useremail widget.
  FocusNode? useremailFocusNode;
  TextEditingController? useremailController;
  String? Function(BuildContext, String?)? useremailControllerValidator;
  String? _useremailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for userphone widget.
  FocusNode? userphoneFocusNode;
  TextEditingController? userphoneController;
  final userphoneMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? userphoneControllerValidator;
  String? _userphoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for professionaltitle widget.
  FocusNode? professionaltitleFocusNode;
  TextEditingController? professionaltitleController;
  String? Function(BuildContext, String?)? professionaltitleControllerValidator;
  String? _professionaltitleControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for professionalbackground widget.
  FocusNode? professionalbackgroundFocusNode;
  TextEditingController? professionalbackgroundController;
  String? Function(BuildContext, String?)?
      professionalbackgroundControllerValidator;
  String? _professionalbackgroundControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for licensenumber widget.
  FocusNode? licensenumberFocusNode;
  TextEditingController? licensenumberController;
  String? Function(BuildContext, String?)? licensenumberControllerValidator;
  String? _licensenumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for modalities widget.
  FocusNode? modalitiesFocusNode;
  TextEditingController? modalitiesController;
  String? Function(BuildContext, String?)? modalitiesControllerValidator;
  String? _modalitiesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sidemenuWebModel = createModel(context, () => SidemenuWebModel());
    fullnameControllerValidator = _fullnameControllerValidator;
    useremailControllerValidator = _useremailControllerValidator;
    userphoneControllerValidator = _userphoneControllerValidator;
    professionaltitleControllerValidator =
        _professionaltitleControllerValidator;
    professionalbackgroundControllerValidator =
        _professionalbackgroundControllerValidator;
    licensenumberControllerValidator = _licensenumberControllerValidator;
    modalitiesControllerValidator = _modalitiesControllerValidator;
    compressedMenuModel = createModel(context, () => CompressedMenuModel());
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    sidemenuWebModel.dispose();
    tabBarController?.dispose();
    fullnameFocusNode?.dispose();
    fullnameController?.dispose();

    useremailFocusNode?.dispose();
    useremailController?.dispose();

    userphoneFocusNode?.dispose();
    userphoneController?.dispose();

    professionaltitleFocusNode?.dispose();
    professionaltitleController?.dispose();

    professionalbackgroundFocusNode?.dispose();
    professionalbackgroundController?.dispose();

    licensenumberFocusNode?.dispose();
    licensenumberController?.dispose();

    modalitiesFocusNode?.dispose();
    modalitiesController?.dispose();

    compressedMenuModel.dispose();
    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
