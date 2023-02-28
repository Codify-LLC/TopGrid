import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/components/orders/orders_widget.dart';
import '/components/userwidget/userwidget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorDashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for userwidget component.
  late UserwidgetModel userwidgetModel;
  // Model for Orders component.
  late OrdersModel ordersModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userwidgetModel = createModel(context, () => UserwidgetModel());
    ordersModel = createModel(context, () => OrdersModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    menuModel.dispose();
    userwidgetModel.dispose();
    ordersModel.dispose();
  }

  /// Additional helper methods are added here.

}
