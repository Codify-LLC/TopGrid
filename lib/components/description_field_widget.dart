import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'description_field_model.dart';
export 'description_field_model.dart';

class DescriptionFieldWidget extends StatefulWidget {
  const DescriptionFieldWidget({
    Key? key,
    this.initialValue,
  }) : super(key: key);

  final String? initialValue;

  @override
  _DescriptionFieldWidgetState createState() => _DescriptionFieldWidgetState();
}

class _DescriptionFieldWidgetState extends State<DescriptionFieldWidget> {
  late DescriptionFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescriptionFieldModel());

    _model.addDescriptionController ??=
        TextEditingController(text: widget.initialValue);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: _model.addDescriptionController,
          obscureText: false,
          decoration: InputDecoration(
            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 18.0,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 16.0,
              ),
          textAlign: TextAlign.start,
          maxLines: 10,
          minLines: 1,
          validator:
              _model.addDescriptionControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
