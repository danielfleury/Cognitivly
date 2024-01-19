import '/backend/backend.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patient_explorer_widget.dart' show PatientExplorerWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PatientExplorerModel extends FlutterFlowModel<PatientExplorerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UsercodesRecord? aPIRef;
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<PatientDocumentsRecord> simpleSearchResults1 = [];
  // State field(s) for emptysearch widget.

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>?
      emptysearchPagingController1;
  Query? emptysearchPagingQuery1;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? quickNote;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? quickNoteActiveSearch;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  List<PatientDocumentsRecord> simpleSearchResults2 = [];
  // State field(s) for emptysearch widget.

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>?
      emptysearchPagingController2;
  Query? emptysearchPagingQuery2;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? quickNoteMobile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SessionNotesRecord? quickNoteActiveSearchMobile;
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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    sidemenuWebModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    emptysearchPagingController1?.dispose();

    compressedMenuModel.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    emptysearchPagingController2?.dispose();

    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>
      setEmptysearchController1(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    emptysearchPagingController1 ??=
        _createEmptysearchController1(query, parent);
    if (emptysearchPagingQuery1 != query) {
      emptysearchPagingQuery1 = query;
      emptysearchPagingController1?.refresh();
    }
    return emptysearchPagingController1!;
  }

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>
      _createEmptysearchController1(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PatientDocumentsRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPatientDocumentsRecordPage(
          queryBuilder: (_) => emptysearchPagingQuery1 ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>
      setEmptysearchController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    emptysearchPagingController2 ??=
        _createEmptysearchController2(query, parent);
    if (emptysearchPagingQuery2 != query) {
      emptysearchPagingQuery2 = query;
      emptysearchPagingController2?.refresh();
    }
    return emptysearchPagingController2!;
  }

  PagingController<DocumentSnapshot?, PatientDocumentsRecord>
      _createEmptysearchController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PatientDocumentsRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPatientDocumentsRecordPage(
          queryBuilder: (_) => emptysearchPagingQuery2 ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}
