import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
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

  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for BuyerContactNumber widget.
  TextEditingController? buyerContactNumberController;
  String? Function(BuildContext, String?)?
      buyerContactNumberControllerValidator;
  String? _buyerContactNumberControllerValidator(
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
    emailControllerValidator = _emailControllerValidator;
    buyerContactNumberControllerValidator =
        _buyerContactNumberControllerValidator;
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
    emailController?.dispose();
    buyerContactNumberController?.dispose();
    passwordController?.dispose();
    confirmpasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
