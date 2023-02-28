import '/components/menu/menu_widget.dart';
import '/components/orders_and_open_r_f_qs/orders_and_open_r_f_qs_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SalesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for OrdersAndOpenRFQs component.
  late OrdersAndOpenRFQsModel ordersAndOpenRFQsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    ordersAndOpenRFQsModel =
        createModel(context, () => OrdersAndOpenRFQsModel());
  }

  void dispose() {
    menuModel.dispose();
    ordersAndOpenRFQsModel.dispose();
  }

  /// Additional helper methods are added here.

}
