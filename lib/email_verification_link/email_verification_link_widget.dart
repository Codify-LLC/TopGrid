import '../auth/auth_util.dart';
import '../components/email_verification_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_verification_link_model.dart';
export 'email_verification_link_model.dart';

class EmailVerificationLinkWidget extends StatefulWidget {
  const EmailVerificationLinkWidget({Key? key}) : super(key: key);

  @override
  _EmailVerificationLinkWidgetState createState() =>
      _EmailVerificationLinkWidgetState();
}

class _EmailVerificationLinkWidgetState
    extends State<EmailVerificationLinkWidget> {
  late EmailVerificationLinkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailVerificationLinkModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserEmailVerified) {
        context.goNamed('Dashboard');
      } else {
        // Send Verification Email
        await sendEmailVerification();
        _model.instantTimer = InstantTimer.periodic(
          duration: Duration(milliseconds: 1000),
          callback: (timer) async {
            if (currentUserEmailVerified) {
              context.goNamed('Dashboard');

              null?.cancel();
            }
          },
          startImmediately: true,
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'EmailVerificationLink',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: wrapWithModel(
                  model: _model.emailVerificationModel,
                  updateCallback: () => setState(() {}),
                  child: EmailVerificationWidget(),
                ),
              ),
            ),
          ),
        ));
  }
}
