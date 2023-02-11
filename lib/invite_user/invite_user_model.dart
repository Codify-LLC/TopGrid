import '../components/invite_sent_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InviteUserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for inviteSent component.
  late InviteSentModel inviteSentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inviteSentModel = createModel(context, () => InviteSentModel());
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
