import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'note_editor_widget.dart' show NoteEditorWidget;
import 'package:flutter/material.dart';

class NoteEditorModel extends FlutterFlowModel<NoteEditorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel1;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for rawnotetitle widget.
  FocusNode? rawnotetitleFocusNode;
  TextEditingController? rawnotetitleController;
  String? Function(BuildContext, String?)? rawnotetitleControllerValidator;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Row widget.
  ScrollController? rowController1;
  // State field(s) for Row widget.
  ScrollController? rowController2;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutmincustom;
  // Stores action output result for [Backend Call - API (CustomNoteGeneration)] action in Button widget.
  ApiCallResponse? customNoteGeneration;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionouttreatmentmin;
  // Stores action output result for [Backend Call - API (TreatmentPlan)] action in Button widget.
  ApiCallResponse? treatmentPlanMin;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutminpsychotherapy;
  // Stores action output result for [Backend Call - API (PsychotherapyNote)] action in Button widget.
  ApiCallResponse? psychoTherapyNote;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutminsoap;
  // Stores action output result for [Backend Call - API (SOAPNote)] action in Button widget.
  ApiCallResponse? sOAPNote;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutminbirp;
  // Stores action output result for [Backend Call - API (BIRPNote)] action in Button widget.
  ApiCallResponse? bIRPNote;
  // State field(s) for rawnoteweb widget.
  FocusNode? rawnotewebFocusNode;
  TextEditingController? rawnotewebController;
  String? Function(BuildContext, String?)? rawnotewebControllerValidator;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionout;
  // Stores action output result for [Backend Call - API (NotesSummary)] action in Button widget.
  ApiCallResponse? notesSummaryFast;
  // Stores action output result for [Backend Call - API (NoteHypotheses)] action in Button widget.
  ApiCallResponse? noteHypothesesFast;
  // Stores action output result for [Backend Call - API (NotesTitle)] action in Button widget.
  ApiCallResponse? noteTitleFast;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutslow;
  // Stores action output result for [Backend Call - API (NotesSummary)] action in Button widget.
  ApiCallResponse? notesSummary;
  // Stores action output result for [Backend Call - API (NoteHypotheses)] action in Button widget.
  ApiCallResponse? noteHypotheses;
  // Stores action output result for [Backend Call - API (NotesTitle)] action in Button widget.
  ApiCallResponse? noteTitle;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactedcompliance;
  // Stores action output result for [Backend Call - API (CompliantTreatmentPlan)] action in Button widget.
  ApiCallResponse? compliantplan;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for Column widget.
  ScrollController? columnController4;
  // State field(s) for Column widget.
  ScrollController? columnController5;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for messageinput widget.
  FocusNode? messageinputFocusNode;
  TextEditingController? messageinputController;
  String? Function(BuildContext, String?)? messageinputControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Image widget.
  NoteMessagesRecord? notemessage;
  // Stores action output result for [Backend Call - API (NoteDialogue)] action in Image widget.
  ApiCallResponse? clinicalmessageAPI;
  // State field(s) for Column widget.
  ScrollController? columnController6;
  // State field(s) for ChatFullColumn widget.
  ScrollController? chatFullColumn;
  // State field(s) for messageinputfull widget.
  FocusNode? messageinputfullFocusNode;
  TextEditingController? messageinputfullController;
  String? Function(BuildContext, String?)? messageinputfullControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Image widget.
  NoteMessagesRecord? notemessagefull;
  // Stores action output result for [Backend Call - API (NoteDialogue)] action in Image widget.
  ApiCallResponse? clinicalmessageAPIFull;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel2;
  // State field(s) for Column widget.
  ScrollController? columnController7;
  // State field(s) for rawnotetitlemobile widget.
  FocusNode? rawnotetitlemobileFocusNode;
  TextEditingController? rawnotetitlemobileController;
  String? Function(BuildContext, String?)?
      rawnotetitlemobileControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Column widget.
  ScrollController? columnController8;
  // State field(s) for Row widget.
  ScrollController? rowController3;
  // State field(s) for Row widget.
  ScrollController? rowController4;
  // State field(s) for Row widget.
  ScrollController? rowController5;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutmobile;
  // Stores action output result for [Backend Call - API (CustomNoteGeneration)] action in Button widget.
  ApiCallResponse? customNoteGenerationMobile;
  // State field(s) for Row widget.
  ScrollController? rowController6;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionouttreatmentmobile;
  // Stores action output result for [Backend Call - API (TreatmentPlan)] action in Button widget.
  ApiCallResponse? treatmentPlanMobile;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutpsychotherapymobile;
  // Stores action output result for [Backend Call - API (PsychotherapyNote)] action in Button widget.
  ApiCallResponse? psychoTherapyNoteMobile;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutfullsoapmobile;
  // Stores action output result for [Backend Call - API (SOAPNote)] action in Button widget.
  ApiCallResponse? sOAPNoteMobile;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutfullbirpmobile;
  // Stores action output result for [Backend Call - API (BIRPNote)] action in Button widget.
  ApiCallResponse? bIRPNoteMobile;
  // State field(s) for Row widget.
  ScrollController? rowController7;
  // State field(s) for rawnotemobile widget.
  FocusNode? rawnotemobileFocusNode;
  TextEditingController? rawnotemobileController;
  String? Function(BuildContext, String?)? rawnotemobileControllerValidator;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutfullfastmobile;
  // Stores action output result for [Backend Call - API (NotesSummary)] action in Button widget.
  ApiCallResponse? notesSummaryFastFullMobile;
  // Stores action output result for [Backend Call - API (NoteHypotheses)] action in Button widget.
  ApiCallResponse? noteHypothesesFastFullMobile;
  // Stores action output result for [Backend Call - API (NotesTitle)] action in Button widget.
  ApiCallResponse? noteTitleFastFullMobile;
  // Stores action output result for [Backend Call - API (PangeaRedact)] action in Button widget.
  ApiCallResponse? redactionactionoutfullslowmobile;
  // Stores action output result for [Backend Call - API (NotesSummary)] action in Button widget.
  ApiCallResponse? notesSummarySlowMobile;
  // Stores action output result for [Backend Call - API (NoteHypotheses)] action in Button widget.
  ApiCallResponse? noteHypothesesSlowMobile;
  // Stores action output result for [Backend Call - API (NotesTitle)] action in Button widget.
  ApiCallResponse? noteTitleFullSlowMobile;
  // State field(s) for Switchfull widget.
  bool? switchfullValue;
  // State field(s) for Column widget.
  ScrollController? columnController9;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // State field(s) for Column widget.
  ScrollController? columnController10;
  // State field(s) for Column widget.
  ScrollController? columnController11;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for messageinputmobile widget.
  FocusNode? messageinputmobileFocusNode;
  TextEditingController? messageinputmobileController;
  String? Function(BuildContext, String?)?
      messageinputmobileControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Image widget.
  NoteMessagesRecord? notemessagemobile;
  // Stores action output result for [Backend Call - API (NoteDialogue)] action in Image widget.
  ApiCallResponse? clinicalmessageAPIMobile;
  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    compressedMenuModel1 = createModel(context, () => CompressedMenuModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    rowController1 = ScrollController();
    rowController2 = ScrollController();
    columnController3 = ScrollController();
    columnController4 = ScrollController();
    columnController5 = ScrollController();
    listViewController1 = ScrollController();
    columnController6 = ScrollController();
    chatFullColumn = ScrollController();
    compressedMenuModel2 = createModel(context, () => CompressedMenuModel());
    columnController7 = ScrollController();
    columnController8 = ScrollController();
    rowController3 = ScrollController();
    rowController4 = ScrollController();
    rowController5 = ScrollController();
    rowController6 = ScrollController();
    rowController7 = ScrollController();
    columnController9 = ScrollController();
    columnController10 = ScrollController();
    columnController11 = ScrollController();
    listViewController2 = ScrollController();
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    compressedMenuModel1.dispose();
    columnController1?.dispose();
    rawnotetitleFocusNode?.dispose();
    rawnotetitleController?.dispose();

    columnController2?.dispose();
    rowController1?.dispose();
    rowController2?.dispose();
    rawnotewebFocusNode?.dispose();
    rawnotewebController?.dispose();

    columnController3?.dispose();
    columnController4?.dispose();
    columnController5?.dispose();
    listViewController1?.dispose();
    messageinputFocusNode?.dispose();
    messageinputController?.dispose();

    columnController6?.dispose();
    chatFullColumn?.dispose();
    messageinputfullFocusNode?.dispose();
    messageinputfullController?.dispose();

    compressedMenuModel2.dispose();
    columnController7?.dispose();
    rawnotetitlemobileFocusNode?.dispose();
    rawnotetitlemobileController?.dispose();

    tabBarController?.dispose();
    columnController8?.dispose();
    rowController3?.dispose();
    rowController4?.dispose();
    rowController5?.dispose();
    rowController6?.dispose();
    rowController7?.dispose();
    rawnotemobileFocusNode?.dispose();
    rawnotemobileController?.dispose();

    columnController9?.dispose();
    columnController10?.dispose();
    columnController11?.dispose();
    listViewController2?.dispose();
    messageinputmobileFocusNode?.dispose();
    messageinputmobileController?.dispose();

    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
