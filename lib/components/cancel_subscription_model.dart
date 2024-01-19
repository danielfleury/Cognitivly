import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cancel_subscription_widget.dart' show CancelSubscriptionWidget;
import 'package:flutter/material.dart';

class CancelSubscriptionModel
    extends FlutterFlowModel<CancelSubscriptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for subscriptioncancelconfirm widget.
  FocusNode? subscriptioncancelconfirmFocusNode;
  TextEditingController? subscriptioncancelconfirmController;
  String? Function(BuildContext, String?)?
      subscriptioncancelconfirmControllerValidator;
  // Stores action output result for [Backend Call - API (StripeCancelSubscription)] action in Button widget.
  ApiCallResponse? apiResultf73;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    subscriptioncancelconfirmFocusNode?.dispose();
    subscriptioncancelconfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
