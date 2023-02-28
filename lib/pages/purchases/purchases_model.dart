import '/components/menu/menu_widget.dart';
import '/components/ongoing_past_r_f_qs/ongoing_past_r_f_qs_widget.dart';
import '/components/orders/orders_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PurchasesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Orders component.
  late OrdersModel ordersModel;
  // Model for OngoingPastRFQs component.
  late OngoingPastRFQsModel ongoingPastRFQsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    ordersModel = createModel(context, () => OrdersModel());
    ongoingPastRFQsModel = createModel(context, () => OngoingPastRFQsModel());
  }

  void dispose() {
    menuModel.dispose();
    ordersModel.dispose();
    ongoingPastRFQsModel.dispose();
  }

  /// Additional helper methods are added here.

}
