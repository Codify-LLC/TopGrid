import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    Key? key,
    this.dashboard,
    this.companyProfile,
    this.purchase,
    this.parts,
    this.vendors,
  }) : super(key: key);

  final bool? dashboard;
  final bool? companyProfile;
  final bool? purchase;
  final bool? parts;
  final bool? vendors;

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 30, 30, 0),
              child: ToggleIcon(
                onPressed: () async {
                  setState(() => FFAppState().showDrawerFull =
                      !FFAppState().showDrawerFull);
                },
                value: FFAppState().showDrawerFull,
                onIcon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
                offIcon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 38, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 25),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('Dashboard');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 45,
                              icon: Icon(
                                Icons.dashboard_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25,
                              ),
                              onPressed: () async {
                                context.pushNamed('Dashboard');
                              },
                            ),
                            if (FFAppState().showDrawerFull)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'Dashboard',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.dashboard!
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('CompanyProfile');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 45,
                              icon: Icon(
                                Icons.location_history_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25,
                              ),
                              onPressed: () async {
                                context.pushNamed('CompanyProfile');
                              },
                            ),
                            if (FFAppState().showDrawerFull)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault(
                                                currentUserDocument?.userType,
                                                '') ==
                                            'vendor'
                                        ? 'Vendor Profile'
                                        : 'Company Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: widget.companyProfile!
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryColor
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 45,
                            icon: Icon(
                              Icons.point_of_sale,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          if (FFAppState().showDrawerFull)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(currentUserDocument?.userType,
                                              '') ==
                                          'vendor'
                                      ? 'Sales'
                                      : 'Purchases',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.purchase!
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (valueOrDefault(currentUserDocument?.userType, '') !=
                        'vendor')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              context.pushNamed('Parts');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.settings_input_component_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('Parts');
                                  },
                                ),
                                if (FFAppState().showDrawerFull)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'Parts',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: widget.parts!
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryColor
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (valueOrDefault(currentUserDocument?.userType, '') !=
                        'vendor')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                        child: AuthUserStreamWidget(
                          builder: (context) => Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 45,
                                icon: Icon(
                                  Icons.send,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              if (FFAppState().showDrawerFull)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Vendors',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: widget.vendors!
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryColor
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 15),
                      child: InkWell(
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await signOut();

                          context.goNamedAuth('Login', mounted);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 45,
                              icon: Icon(
                                Icons.logout,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25,
                              ),
                              onPressed: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                await signOut();

                                context.goNamedAuth('Login', mounted);
                              },
                            ),
                            if (FFAppState().showDrawerFull)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'Logout',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
