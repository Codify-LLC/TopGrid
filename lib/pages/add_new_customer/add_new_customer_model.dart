import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewCustomerModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool addUserDialogue = false;

  List<CompanyUsersLocalStruct> addedUsers = [];
  void addToAddedUsers(CompanyUsersLocalStruct item) => addedUsers.add(item);
  void removeFromAddedUsers(CompanyUsersLocalStruct item) =>
      addedUsers.remove(item);
  void removeAtIndexFromAddedUsers(int index) => addedUsers.removeAt(index);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for CompanyName widget.
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  String? _companyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LegalName widget.
  TextEditingController? legalNameController;
  String? Function(BuildContext, String?)? legalNameControllerValidator;
  String? _legalNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for GSTNumber widget.
  TextEditingController? gSTNumberController;
  String? Function(BuildContext, String?)? gSTNumberControllerValidator;
  String? _gSTNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AdminEmail widget.
  TextEditingController? adminEmailController;
  String? Function(BuildContext, String?)? adminEmailControllerValidator;
  String? _adminEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for AdminContactNumber widget.
  TextEditingController? adminContactNumberController;
  String? Function(BuildContext, String?)?
      adminContactNumberControllerValidator;
  String? _adminContactNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AdminUserName widget.
  TextEditingController? adminUserNameController;
  String? Function(BuildContext, String?)? adminUserNameControllerValidator;
  String? _adminUserNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for City widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Pincode widget.
  TextEditingController? pincodeController;
  String? Function(BuildContext, String?)? pincodeControllerValidator;
  String? _pincodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for State widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  CompanyRecord? newOrganization;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    companyNameControllerValidator = _companyNameControllerValidator;
    legalNameControllerValidator = _legalNameControllerValidator;
    gSTNumberControllerValidator = _gSTNumberControllerValidator;
    adminEmailControllerValidator = _adminEmailControllerValidator;
    adminContactNumberControllerValidator =
        _adminContactNumberControllerValidator;
    adminUserNameControllerValidator = _adminUserNameControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    pincodeControllerValidator = _pincodeControllerValidator;
    stateControllerValidator = _stateControllerValidator;
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
