import '../backend/backend.dart';
import '../components/menu_widget.dart';
import '../components/rfq_chat_widget.dart';
import '../components/rfq_requirements_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RCPtabbarModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String pageType = 'requirements';

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for rfqRequirements component.
  late RfqRequirementsModel rfqRequirementsModel;
  // Model for rfqChat component.
  late RfqChatModel rfqChatModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    rfqRequirementsModel = createModel(context, () => RfqRequirementsModel());
    rfqChatModel = createModel(context, () => RfqChatModel());
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
