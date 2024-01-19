import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'therapist_note_styles_widget.dart' show TherapistNoteStylesWidget;
import 'package:flutter/material.dart';

class TherapistNoteStylesModel
    extends FlutterFlowModel<TherapistNoteStylesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
