import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MultipleSelectionDropDownModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.

  Map<CompanyUsersRecord, bool> checkboxListTileValueMap = {};
  List<CompanyUsersRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
