import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorQuotationsModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  List<dynamic> fileData = [];
  void addToFileData(dynamic item) => fileData.add(item);
  void removeFromFileData(dynamic item) => fileData.remove(item);
  void removeAtIndexFromFileData(int index) => fileData.removeAt(index);

  ///  State fields for stateful widgets in this component.

  // State field(s) for DeliveryDays widget.
  TextEditingController? deliveryDaysController;
  String? Function(BuildContext, String?)? deliveryDaysControllerValidator;
  // State field(s) for AddDescription widget.
  TextEditingController? addDescriptionController;
  String? Function(BuildContext, String?)? addDescriptionControllerValidator;
  // Stores action output result for [Custom Action - pickFile] action in Row widget.
  FileStruct? newFile;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  QuotationRecord? newQuotation;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MessagesRecord? newMessage;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newChat;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MessagesRecord? newMessage2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    deliveryDaysController?.dispose();
    addDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
