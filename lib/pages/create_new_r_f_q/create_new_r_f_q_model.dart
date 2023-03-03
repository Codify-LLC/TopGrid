import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/choose_types_of_parts/choose_types_of_parts_widget.dart';
import '/components/empty_requirements_list/empty_requirements_list_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewRFQModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? parts;

  List<dynamic> fileData = [];
  void addToFileData(dynamic item) => fileData.add(item);
  void removeFromFileData(dynamic item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for RFQName widget.
  TextEditingController? rFQNameController;
  String? Function(BuildContext, String?)? rFQNameControllerValidator;
  String? _rFQNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // State field(s) for AddDescription widget.
  TextEditingController? addDescriptionController;
  String? Function(BuildContext, String?)? addDescriptionControllerValidator;
  // Stores action output result for [Custom Action - pickFile] action in Row widget.
  dynamic? newFile;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    rFQNameControllerValidator = _rFQNameControllerValidator;
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    menuModel.dispose();
    rFQNameController?.dispose();
    quantityController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
