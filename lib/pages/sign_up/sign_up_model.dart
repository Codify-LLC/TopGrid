import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NameOfTheCompany widget.
  TextEditingController? nameOfTheCompanyController;
  String? Function(BuildContext, String?)? nameOfTheCompanyControllerValidator;
  String? _nameOfTheCompanyControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LegalNameOfTheCompany widget.
  TextEditingController? legalNameOfTheCompanyController;
  String? Function(BuildContext, String?)?
      legalNameOfTheCompanyControllerValidator;
  String? _legalNameOfTheCompanyControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for State widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AdminEmailAddress widget.
  TextEditingController? adminEmailAddressController;
  String? Function(BuildContext, String?)? adminEmailAddressControllerValidator;
  String? _adminEmailAddressControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for confirmpassword widget.
  TextEditingController? confirmpasswordController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)? confirmpasswordControllerValidator;
  String? _confirmpasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in CreateAccount widget.
  CompanyRecord? newCompanyDoc;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameOfTheCompanyControllerValidator = _nameOfTheCompanyControllerValidator;
    legalNameOfTheCompanyControllerValidator =
        _legalNameOfTheCompanyControllerValidator;
    nameControllerValidator = _nameControllerValidator;
    gSTNumberControllerValidator = _gSTNumberControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    stateControllerValidator = _stateControllerValidator;
    pinCodeControllerValidator = _pinCodeControllerValidator;
    adminEmailAddressControllerValidator =
        _adminEmailAddressControllerValidator;
    adminContactNumberControllerValidator =
        _adminContactNumberControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    confirmpasswordVisibility = false;
    confirmpasswordControllerValidator = _confirmpasswordControllerValidator;
  }

  void dispose() {
    nameOfTheCompanyController?.dispose();
    legalNameOfTheCompanyController?.dispose();
    nameController?.dispose();
    gSTNumberController?.dispose();
    addressController?.dispose();
    cityController?.dispose();
    stateController?.dispose();
    pinCodeController?.dispose();
    adminEmailAddressController?.dispose();
    adminContactNumberController?.dispose();
    passwordController?.dispose();
    confirmpasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
