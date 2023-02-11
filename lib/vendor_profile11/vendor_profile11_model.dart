import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_widget.dart';
import '../components/userwidget_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorProfile11Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for userwidget component.
  late UserwidgetModel userwidgetModel;
  // State field(s) for Vendor_Number widget.
  TextEditingController? vendorNumberController;
  String? Function(BuildContext, String?)? vendorNumberControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Legal_Name widget.
  TextEditingController? legalNameController;
  String? Function(BuildContext, String?)? legalNameControllerValidator;
  // State field(s) for Specialisation widget.
  TextEditingController? specialisationController;
  String? Function(BuildContext, String?)? specialisationControllerValidator;
  // State field(s) for Line1 widget.
  TextEditingController? line1Controller;
  String? Function(BuildContext, String?)? line1ControllerValidator;
  // State field(s) for State widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  // State field(s) for City widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for Pincode widget.
  TextEditingController? pincodeController;
  String? Function(BuildContext, String?)? pincodeControllerValidator;
  // State field(s) for GSTNumber widget.
  TextEditingController? gSTNumberController;
  String? Function(BuildContext, String?)? gSTNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userwidgetModel = createModel(context, () => UserwidgetModel());
  }

  void dispose() {
    vendorNumberController?.dispose();
    nameController?.dispose();
    legalNameController?.dispose();
    specialisationController?.dispose();
    line1Controller?.dispose();
    stateController?.dispose();
    cityController?.dispose();
    pincodeController?.dispose();
    gSTNumberController?.dispose();
  }

  /// Additional helper methods are added here.

}
