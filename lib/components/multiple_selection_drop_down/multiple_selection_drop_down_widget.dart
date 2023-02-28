import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'multiple_selection_drop_down_model.dart';
export 'multiple_selection_drop_down_model.dart';

class MultipleSelectionDropDownWidget extends StatefulWidget {
  const MultipleSelectionDropDownWidget({
    Key? key,
    this.optionsList,
    this.width,
    this.height,
    this.onSelectAction,
  }) : super(key: key);

  final List<String>? optionsList;
  final double? width;
  final double? height;
  final Future<dynamic> Function()? onSelectAction;

  @override
  _MultipleSelectionDropDownWidgetState createState() =>
      _MultipleSelectionDropDownWidgetState();
}

class _MultipleSelectionDropDownWidgetState
    extends State<MultipleSelectionDropDownWidget> {
  late MultipleSelectionDropDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MultipleSelectionDropDownModel());

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

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(),
      child: FlutterFlowCheckboxGroup(
        options: widget.optionsList!.toList(),
        onChanged: (val) => setState(() => _model.checkboxGroupValues = val),
        activeColor: FlutterFlowTheme.of(context).primaryColor,
        checkColor: Colors.white,
        checkboxBorderColor: Color(0xFF95A1AC),
        textStyle: FlutterFlowTheme.of(context).bodyText1,
        initialized: _model.checkboxGroupValues != null,
      ),
    );
  }
}
