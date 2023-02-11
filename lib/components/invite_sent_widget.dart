import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invite_sent_model.dart';
export 'invite_sent_model.dart';

class InviteSentWidget extends StatefulWidget {
  const InviteSentWidget({Key? key}) : super(key: key);

  @override
  _InviteSentWidgetState createState() => _InviteSentWidgetState();
}

class _InviteSentWidgetState extends State<InviteSentWidget> {
  late InviteSentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InviteSentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 10,
              borderWidth: 1,
              buttonSize: 60,
              fillColor: FlutterFlowTheme.of(context).primaryColor,
              icon: Icon(
                Icons.done_all_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 40,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Text(
                'User Invite Send',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 18,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
