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
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PartDetailsModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<FileStruct> fileData = [];
  void addToFileData(FileStruct item) => fileData.add(item);
  void removeFromFileData(FileStruct item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for PartName widget.
  TextEditingController? partNameController;
  String? Function(BuildContext, String?)? partNameControllerValidator;
  // State field(s) for PartTypeDropDown widget.
  String? partTypeDropDownValue;
  // State field(s) for AddDescription widget.
  TextEditingController? addDescriptionController;
  String? Function(BuildContext, String?)? addDescriptionControllerValidator;
  // Stores action output result for [Custom Action - pickFile] action in Row widget.
  FileStruct? newFile;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  void dispose() {
    menuModel.dispose();
    partNameController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
