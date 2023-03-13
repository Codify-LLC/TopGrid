import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
    bool? customers,
  })  : this.customers = customers ?? false,
        super(key: key);

  final bool? dashboard;
  final bool? companyProfile;
  final bool? purchase;
  final bool? parts;
  final bool? vendors;
  final bool customers;

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      child: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        constraints: BoxConstraints(
          maxWidth: 350.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 0.0),
                  child: ToggleIcon(
                    onPressed: () async {
                      setState(() => FFAppState().showDrawerFull =
                          !FFAppState().showDrawerFull);
                    },
                    value: FFAppState().showDrawerFull,
                    onIcon: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    offIcon: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
                if (FFAppState().showDrawerFull)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/Top_grid_logo-02-removebg-preview.png',
                      width: 160.0,
                      height: 48.0,
                      fit: BoxFit.contain,
                    ),
                  ),
              ],
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 38.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 25.0),
                      child: InkWell(
                        onTap: () async {
                          if (valueOrDefault(
                                  currentUserDocument?.userType, '') ==
                              'topgrid') {
                            context.goNamed('TopGridDashboard');
                          } else {
                            context.goNamed('Dashboard');
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color: widget.dashboard!
                                  ? FlutterFlowTheme.of(context).primaryColor
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            if (FFAppState().showDrawerFull)
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'Dashboard',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: widget.dashboard!
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryColor
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (((valueOrDefault(currentUserDocument?.role, '') ==
                                'Admin') &&
                            (valueOrDefault(
                                    currentUserDocument?.userType, '') ==
                                'topgrid')) ||
                        (valueOrDefault(currentUserDocument?.userType, '') !=
                            'topgrid'))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.userType, '') ==
                                  'topgrid') {
                                context.goNamed('TopGridUsers');
                              } else {
                                context.goNamed('CompanyProfile');
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_history,
                                  color: widget.companyProfile!
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  size: 24.0,
                                ),
                                if (FFAppState().showDrawerFull)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        () {
                                          if (valueOrDefault(
                                                  currentUserDocument?.userType,
                                                  '') ==
                                              'vendor') {
                                            return 'Company Profile';
                                          } else if (valueOrDefault(
                                                  currentUserDocument?.userType,
                                                  '') ==
                                              'topgrid') {
                                            return 'Topgrid Users';
                                          } else {
                                            return 'Company Profile';
                                          }
                                        }(),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: widget.companyProfile!
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if ((valueOrDefault(currentUserDocument?.role, '') ==
                            'Admin') &&
                        (valueOrDefault(currentUserDocument?.userType, '') ==
                            'topgrid'))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              context.goNamed('TopGridCustomers');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.people,
                                  color: widget.customers
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  size: 24.0,
                                ),
                                if (FFAppState().showDrawerFull)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        'Customers',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: widget.customers
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (((valueOrDefault(currentUserDocument?.role, '') ==
                                'Admin') &&
                            (valueOrDefault(
                                    currentUserDocument?.userType, '') ==
                                'topgrid')) ||
                        (valueOrDefault(currentUserDocument?.userType, '') !=
                            'topgrid'))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.userType, '') ==
                                  'vendor') {
                                context.goNamed('Sales');
                              } else {
                                context.goNamed('Purchases');
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.point_of_sale,
                                  color: widget.purchase!
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  size: 24.0,
                                ),
                                if (FFAppState().showDrawerFull)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        valueOrDefault(
                                                    currentUserDocument
                                                        ?.userType,
                                                    '') ==
                                                'vendor'
                                            ? 'Sales'
                                            : 'Purchases',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: widget.purchase!
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              context.pushNamed('Parts');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.settings_input_component_sharp,
                                  color: widget.parts!
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  size: 24.0,
                                ),
                                if (FFAppState().showDrawerFull)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        'Parts',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: widget.parts!
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if ((valueOrDefault(currentUserDocument?.userType, '') !=
                            'vendor') &&
                        (valueOrDefault(currentUserDocument?.role, '') ==
                            'Admin'))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              context.goNamed('TopGridVendors');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.send,
                                  color: widget.vendors!
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  size: 24.0,
                                ),
                                if (FFAppState().showDrawerFull)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        'Vendors',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: widget.vendors!
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 15.0),
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
                            Icon(
                              Icons.logout,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            if (FFAppState().showDrawerFull)
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'Logout',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
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
