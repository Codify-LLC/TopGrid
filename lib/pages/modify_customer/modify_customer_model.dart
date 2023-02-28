import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifyCustomerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for CompanyName widget.
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  // State field(s) for LegalName widget.
  TextEditingController? legalNameController;
  String? Function(BuildContext, String?)? legalNameControllerValidator;
  // State field(s) for GSTNumber widget.
  TextEditingController? gSTNumberController;
  String? Function(BuildContext, String?)? gSTNumberControllerValidator;
  // State field(s) for AdminEmail widget.
  TextEditingController? adminEmailController;
  String? Function(BuildContext, String?)? adminEmailControllerValidator;
  // State field(s) for AdminContactNumber widget.
  TextEditingController? adminContactNumberController;
  String? Function(BuildContext, String?)?
      adminContactNumberControllerValidator;
  // State field(s) for AdminUserName widget.
  TextEditingController? adminUserNameController;
  String? Function(BuildContext, String?)? adminUserNameControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for City widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for Pincode widget.
  TextEditingController? pincodeController;
  String? Function(BuildContext, String?)? pincodeControllerValidator;
  // State field(s) for State widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  void dispose() {
    menuModel.dispose();
    companyNameController?.dispose();
    legalNameController?.dispose();
    gSTNumberController?.dispose();
    adminEmailController?.dispose();
    adminContactNumberController?.dispose();
    adminUserNameController?.dispose();
    addressController?.dispose();
    cityController?.dispose();
    pincodeController?.dispose();
    stateController?.dispose();
  }

  /// Additional helper methods are added here.

}
