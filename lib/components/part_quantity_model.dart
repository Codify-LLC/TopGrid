import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PartQuantityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    quantityController?.dispose();
  }

  /// Additional helper methods are added here.

}
