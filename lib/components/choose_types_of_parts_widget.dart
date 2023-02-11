import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_types_of_parts_model.dart';
export 'choose_types_of_parts_model.dart';

class ChooseTypesOfPartsWidget extends StatefulWidget {
  const ChooseTypesOfPartsWidget({Key? key}) : super(key: key);

  @override
  _ChooseTypesOfPartsWidgetState createState() =>
      _ChooseTypesOfPartsWidgetState();
}

class _ChooseTypesOfPartsWidgetState extends State<ChooseTypesOfPartsWidget> {
  late ChooseTypesOfPartsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseTypesOfPartsModel());

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
      decoration: BoxDecoration(
        color: Color(0x32000000),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.45,
            constraints: BoxConstraints(
              maxWidth: 800,
              maxHeight: 300,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Choose Types  of  Parts',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 40),
                  child: Text(
                    'To create RFQ, you need choose Either Existing part or Create New Part',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0x9E101213),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('CreateNewPart');
                        },
                        text: 'Create New Part',
                        options: FFButtonOptions(
                          width: 240,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('CreateNewRFQ-EP');
                        },
                        text: 'Choose Existing Part',
                        options: FFButtonOptions(
                          width: 240,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
