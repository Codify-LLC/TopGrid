import '/components/menu/menu_widget.dart';
import '/components/orders_and_open_r_f_qs/orders_and_open_r_f_qs_widget.dart';
import '/components/userwidget/userwidget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
  late OrdersAndOpenRFQsModel ordersAndOpenRFQsModel1;
  // Model for OrdersAndOpenRFQs component.
  late OrdersAndOpenRFQsModel ordersAndOpenRFQsModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userwidgetModel = createModel(context, () => UserwidgetModel());
    ordersAndOpenRFQsModel1 =
        createModel(context, () => OrdersAndOpenRFQsModel());
    ordersAndOpenRFQsModel2 =
        createModel(context, () => OrdersAndOpenRFQsModel());
  }

  void dispose() {
    menuModel.dispose();
    userwidgetModel.dispose();
    ordersAndOpenRFQsModel1.dispose();
    ordersAndOpenRFQsModel2.dispose();
  }

  /// Additional helper methods are added here.

}
