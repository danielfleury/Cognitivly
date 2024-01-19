import '/backend/backend.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patient_notes_widget.dart' show PatientNotesWidget;
import 'package:flutter/material.dart';

class PatientNotesModel extends FlutterFlowModel<PatientNotesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<SessionNotesRecord> simpleSearchResults1 = [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? notePassiveParam;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<SessionNotesRecord> simpleSearchResults2 = [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? notePassiveParamMobile;
  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;

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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
