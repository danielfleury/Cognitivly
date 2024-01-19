import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patient_profiles_widget.dart' show PatientProfilesWidget;
import 'package:flutter/material.dart';

class PatientProfilesModel extends FlutterFlowModel<PatientProfilesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<PatientDocumentsRecord> simpleSearchResults1 = [];
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? cloudFunctionhnv;
  // Stores action output result for [Backend Call - API (LastThreeSessionSummary)] action in Button widget.
  ApiCallResponse? apiResultpab;
  // Stores action output result for [Backend Call - API (CummulativeDSM)] action in Button widget.
  ApiCallResponse? apiResultpww;
  // Stores action output result for [Backend Call - API (TopPresentingConcerns)] action in Button widget.
  ApiCallResponse? apiResult1b5;
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? cloudFunctionhnvsearch;
  // Stores action output result for [Backend Call - API (LastThreeSessionSummary)] action in Button widget.
  ApiCallResponse? apiResultpabsearch;
  // Stores action output result for [Backend Call - API (CummulativeDSM)] action in Button widget.
  ApiCallResponse? apiResultpwwsearch;
  // Stores action output result for [Backend Call - API (TopPresentingConcerns)] action in Button widget.
  ApiCallResponse? apiResult1b5search;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<UsersRecord> simpleSearchResults2 = [];
  // Stores action output result for [Cloud Function - getSessionNotes] action in Container widget.
  GetSessionNotesCloudFunctionCallResponse? cloudFunctionmobile;
  // Stores action output result for [Backend Call - API (LastThreeSessionSummary)] action in Container widget.
  ApiCallResponse? lastthreesessionmobile;
  // Stores action output result for [Backend Call - API (CummulativeDSM)] action in Container widget.
  ApiCallResponse? dsmmobile;
  // Stores action output result for [Backend Call - API (TopPresentingConcerns)] action in Container widget.
  ApiCallResponse? concernsmobile;
  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UsercodesRecord? aPIRef;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sidemenuWebModel = createModel(context, () => SidemenuWebModel());
    compressedMenuModel = createModel(context, () => CompressedMenuModel());
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidemenuWebModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    compressedMenuModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    sideMenuModel.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
