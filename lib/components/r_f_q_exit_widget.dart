import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_f_q_exit_model.dart';
export 'r_f_q_exit_model.dart';

class RFQExitWidget extends StatefulWidget {
  const RFQExitWidget({Key? key}) : super(key: key);

  @override
  _RFQExitWidgetState createState() => _RFQExitWidgetState();
}

class _RFQExitWidgetState extends State<RFQExitWidget> {
  late RFQExitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RFQExitModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure, you want to Exit?',
                    style: FlutterFlowTheme.of(context).subtitle1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 40),
                    child: Text(
                      'By proceeding , all the data you have added will be erased',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Proceed',
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
