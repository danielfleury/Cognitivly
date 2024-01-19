import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SidemenuWeb component.
  late SidemenuWebModel sidemenuWebModel;
  // Model for CompressedMenu component.
  late CompressedMenuModel compressedMenuModel;
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
    compressedMenuModel.dispose();
    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
