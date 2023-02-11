import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewRFQEPModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
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
  }

  void dispose() {
    textController1?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
