import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewPartModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<dynamic> fileData = [];
  void addToFileData(dynamic item) => fileData.add(item);
  void removeFromFileData(dynamic item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for PartName widget.
  TextEditingController? partNameController;
  String? Function(BuildContext, String?)? partNameControllerValidator;
  String? _partNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for PartTypeDropDown widget.
  String? partTypeDropDownValue;
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
  dynamic? newFile;
  // Stores action output result for [Custom Action - generateUniqueNumber] action in CreateRFQ-PWP widget.
  int? uniquePartId;
  // Stores action output result for [Backend Call - Create Document] action in CreateRFQ-PWP widget.
  PartRecord? newPartDoc;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    partNameControllerValidator = _partNameControllerValidator;
    addDescriptionControllerValidator = _addDescriptionControllerValidator;
  }

  void dispose() {
    menuModel.dispose();
    partNameController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
