import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patient_dashboard_profile_widget.dart'
    show PatientDashboardProfileWidget;
import 'package:flutter/material.dart';

class PatientDashboardProfileModel
    extends FlutterFlowModel<PatientDashboardProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  Gad7Record? gad7created;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  Phq9Record? phq9created;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientAssessmentsRecord? assessment;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientAssessmentsRecord? gad7;
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? compilednotes;
  // Stores action output result for [Backend Call - API (CompliantTreatmentPlan)] action in Button widget.
  ApiCallResponse? apiResultudw;
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? compilednotesupdate;
  // Stores action output result for [Backend Call - API (CompliantTreatmentPlan)] action in Button widget.
  ApiCallResponse? apiResultupdate;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SessionNotesRecord? noteFromDash;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  Gad7Record? gad7createdmobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  Phq9Record? phq9createdmobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientAssessmentsRecord? phq9mobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientAssessmentsRecord? gad7mobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PatientAssessmentChatsRecord? patientassesschatmobile;
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? compilednotesmobile;
  // Stores action output result for [Backend Call - API (CompliantTreatmentPlan)] action in Button widget.
  ApiCallResponse? apiResultudwmobile;
  // Stores action output result for [Cloud Function - getSessionNotes] action in Button widget.
  GetSessionNotesCloudFunctionCallResponse? compilednotesupdatemobile;
  // Stores action output result for [Backend Call - API (CompliantTreatmentPlan)] action in Button widget.
  ApiCallResponse? apiResultupdatemobile;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SessionNotesRecord? noteFromDashMobile;
  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
    compressedMenuModel.dispose();
    sideMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
