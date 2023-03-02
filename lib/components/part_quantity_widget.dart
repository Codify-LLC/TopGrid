import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'part_quantity_model.dart';
export 'part_quantity_model.dart';

class PartQuantityWidget extends StatefulWidget {
  const PartQuantityWidget({Key? key}) : super(key: key);

  @override
  _PartQuantityWidgetState createState() => _PartQuantityWidgetState();
}

class _PartQuantityWidgetState extends State<PartQuantityWidget> {
  late PartQuantityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartQuantityModel());

    _model.quantityController ??= TextEditingController();
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
      child: TextFormField(
        controller: _model.quantityController,
        autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          hintStyle: FlutterFlowTheme.of(context).bodyText2,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).secondaryText,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyText1,
        keyboardType: TextInputType.number,
        validator: _model.quantityControllerValidator.asValidator(context),
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
      ),
    );
  }
}
