import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/choose_types_of_parts_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewRFQModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? parts;

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for RFQName widget.
  TextEditingController? rFQNameController;
  String? Function(BuildContext, String?)? rFQNameControllerValidator;
  // State field(s) for Quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // State field(s) for AddDescription widget.
  TextEditingController? addDescriptionController;
  String? Function(BuildContext, String?)? addDescriptionControllerValidator;
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    rFQNameController?.dispose();
    quantityController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
