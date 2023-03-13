import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/components/orders_and_open_r_f_qs/orders_and_open_r_f_qs_widget.dart';
import '/components/userwidget/userwidget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopGridDashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for userwidget component.
  late UserwidgetModel userwidgetModel;
  // Model for OrdersAndOpenRFQs component.
  late OrdersAndOpenRFQsModel ordersAndOpenRFQsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userwidgetModel = createModel(context, () => UserwidgetModel());
    ordersAndOpenRFQsModel =
        createModel(context, () => OrdersAndOpenRFQsModel());
  }

  void dispose() {
    menuModel.dispose();
    userwidgetModel.dispose();
    ordersAndOpenRFQsModel.dispose();
  }

  /// Additional helper methods are added here.

}
