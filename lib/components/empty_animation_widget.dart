import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'empty_animation_model.dart';
export 'empty_animation_model.dart';

class EmptyAnimationWidget extends StatefulWidget {
  const EmptyAnimationWidget({Key? key}) : super(key: key);

  @override
  _EmptyAnimationWidgetState createState() => _EmptyAnimationWidgetState();
}

class _EmptyAnimationWidgetState extends State<EmptyAnimationWidget> {
  late EmptyAnimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyAnimationModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/lottie_animations/106964-shake-a-empty-box.json',
            width: 150,
            height: 130,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Text(
              'No Data Found!',
              style: FlutterFlowTheme.of(context).title3,
            ),
          ),
        ],
      ),
    );
  }
}
