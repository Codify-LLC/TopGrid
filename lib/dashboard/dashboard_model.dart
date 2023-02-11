import '../backend/backend.dart';
import '../components/empty_animation_widget.dart';
import '../components/menu_widget.dart';
import '../components/orders03_widget.dart';
import '../components/userwidget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for userwidget component.
  late UserwidgetModel userwidgetModel;
  // Model for Orders03 component.
  late Orders03Model orders03Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userwidgetModel = createModel(context, () => UserwidgetModel());
    orders03Model = createModel(context, () => Orders03Model());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
