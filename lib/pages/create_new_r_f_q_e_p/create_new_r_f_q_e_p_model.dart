import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/description_field_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/multiple_selection_drop_down/multiple_selection_drop_down_widget.dart';
import '/components/part_quantity_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewRFQEPModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<dynamic> fileData = [];
  void addToFileData(dynamic item) => fileData.add(item);
  void removeFromFileData(dynamic item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  bool vendorDropDown = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  // Models for partQuantity dynamic component.
  late FlutterFlowDynamicModels<PartQuantityModel> partQuantityModels;
  // State field(s) for SelectRequirementType widget.
  Map<PartRecord?, String> selectRequirementTypeValueMap = {};
  // Models for descriptionField dynamic component.
  late FlutterFlowDynamicModels<DescriptionFieldModel> descriptionFieldModels;
  // Stores action output result for [Custom Action - pickFile] action in Row widget.
  dynamic? newFile;
  // Stores action output result for [Custom Action - combineArrays] action in CreateRFQ-PWP widget.
  List<RequirementStruct>? finalArray;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    partQuantityModels = FlutterFlowDynamicModels(() => PartQuantityModel());
    descriptionFieldModels =
        FlutterFlowDynamicModels(() => DescriptionFieldModel());
  }

  void dispose() {
    menuModel.dispose();
    partQuantityModels.dispose();
    descriptionFieldModels.dispose();
  }

  /// Additional helper methods are added here.

}
