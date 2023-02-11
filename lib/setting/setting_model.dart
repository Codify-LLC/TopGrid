import '../auth/auth_util.dart';
import '../components/userwidget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for userwidget component.
  late UserwidgetModel userwidgetModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userwidgetModel = createModel(context, () => UserwidgetModel());
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
