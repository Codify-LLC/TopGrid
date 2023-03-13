import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewRFQEPModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<FileStruct> fileData = [];
  void addToFileData(FileStruct item) => fileData.add(item);
  void removeFromFileData(FileStruct item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  bool vendorDropDown = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for Quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  String? _quantityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for SelectRequirementType widget.
  String? selectRequirementTypeValue;
  // State field(s) for AddDescription widget.
  TextEditingController? addDescriptionController;
  String? Function(BuildContext, String?)? addDescriptionControllerValidator;
  String? _addDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // Stores action output result for [Custom Action - pickFile] action in Row widget.
  FileStruct? newFile;
  // Stores action output result for [Custom Action - combineArrays] action in CreateRFQ-PWP widget.
  List<RequirementStruct>? finalArray;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    quantityControllerValidator = _quantityControllerValidator;
    addDescriptionControllerValidator = _addDescriptionControllerValidator;
  }

  void dispose() {
    menuModel.dispose();
    quantityController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
