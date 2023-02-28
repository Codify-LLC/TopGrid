import '/auth/auth_util.dart';
import '/components/email_verification/email_verification_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailVerificationLinkModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Model for EmailVerification component.
  late EmailVerificationModel emailVerificationModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailVerificationModel =
        createModel(context, () => EmailVerificationModel());
  }

  void dispose() {
    instantTimer?.cancel();
    emailVerificationModel.dispose();
  }

  /// Additional helper methods are added here.

}
