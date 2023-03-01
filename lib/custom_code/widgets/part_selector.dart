// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../auth/auth_util.dart';
import '../../flutter_flow/flutter_flow_drop_down.dart';
import '../../flutter_flow/instant_timer.dart';

class PartSelector extends StatefulWidget {
  const PartSelector({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _PartSelectorState createState() => _PartSelectorState();
}

class _PartSelectorState extends State<PartSelector> {
  PartRecord? selectedPart;
  String? selectPartsValue;
  InstantTimer? instantTimer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 48, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Text(
                'Select Parts',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
              ),
            ),
            StreamBuilder<List<PartRecord>>(
              stream: queryPartRecord(
                queryBuilder: (partRecord) => partRecord.where('user_ref',
                    isEqualTo: currentUserReference),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<PartRecord> selectPartsPartRecordList = snapshot.data!;
                return FlutterFlowDropDown<String>(
                  options: selectPartsPartRecordList
                      .map((e) => e.partName)
                      .withoutNulls
                      .toList()
                      .toList(),
                  onChanged: (val) async {
                    setState(() => selectPartsValue = val);
                    selectedPart = selectPartsPartRecordList
                        .where((element) => element.partName == val)
                        .first;
                    FFAppState().update(
                      () => FFAppState().selectedPart =
                          val ?? 'uuygjkjgUOHJLuy34645',
                    );
                  },
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  hintText: 'Select',
                  elevation: 2,
                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                  borderWidth: 1,
                  borderRadius: 4,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                );
              },
            ),
            if ((selectedPart != null ? selectedPart!.encryption : false) ??
                true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.lock_outlined,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        'This Part is Encrypted',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
