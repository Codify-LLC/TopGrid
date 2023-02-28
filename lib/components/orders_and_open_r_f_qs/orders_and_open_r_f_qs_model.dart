import '/backend/backend.dart';
import '/components/empty_animation/empty_animation_widget.dart';
import '/components/orders/orders_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersAndOpenRFQsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Orders component.
  late OrdersModel ordersModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    ordersModel = createModel(context, () => OrdersModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    ordersModel.dispose();
  }

  /// Additional helper methods are added here.

}
