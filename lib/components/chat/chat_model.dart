import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  DocumentReference? selectedChat;

  ///  State fields for stateful widgets in this component.

  // State field(s) for NewMessage widget.
  TextEditingController? newMessageController;
  String? Function(BuildContext, String?)? newMessageControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  MessagesRecord? newMessage;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    newMessageController?.dispose();
  }

  /// Additional helper methods are added here.

}
