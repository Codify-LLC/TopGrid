// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class EncryptionToggle extends StatefulWidget {
  const EncryptionToggle({
    Key? key,
    this.width,
    this.height,
    required this.encryption,
  }) : super(key: key);

  final double? width;
  final double? height;
  final bool encryption;

  @override
  _EncryptionToggleState createState() => _EncryptionToggleState();
}

class _EncryptionToggleState extends State<EncryptionToggle> {
  late bool encryptionStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    encryptionStatus = widget.encryption;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch.adaptive(
          value: encryptionStatus,
          onChanged: (newValue) async {
            if (newValue) {
              setState(() => encryptionStatus = newValue);
              FFAppState().update(() => FFAppState().encryptionFlag = newValue);
            } else {
              var confirmDialogResponse = await showDialog<bool>(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text(
                            'Are you sure, You want to Turn off Encryption?'),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, false),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: Text('Confirm'),
                          ),
                        ],
                      );
                    },
                  ) ??
                  false;
              if (confirmDialogResponse) {
                setState(() => encryptionStatus = newValue);
                FFAppState()
                    .update(() => FFAppState().encryptionFlag = newValue);
              }
            }
          },
          activeColor: FlutterFlowTheme.of(context).primaryColor,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
          child: Text(
            FFAppState().encryptionFlag ? 'Yes' : 'No',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
      ],
    );
  }
}
