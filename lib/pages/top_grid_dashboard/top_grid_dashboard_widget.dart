import '/components/menu/menu_widget.dart';
import '/components/orders_and_open_r_f_qs/orders_and_open_r_f_qs_widget.dart';
import '/components/userwidget/userwidget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_grid_dashboard_model.dart';
export 'top_grid_dashboard_model.dart';

class TopGridDashboardWidget extends StatefulWidget {
  const TopGridDashboardWidget({Key? key}) : super(key: key);

  @override
  _TopGridDashboardWidgetState createState() => _TopGridDashboardWidgetState();
}

class _TopGridDashboardWidgetState extends State<TopGridDashboardWidget> {
  late TopGridDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopGridDashboardModel());

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
        title: 'TopGridDashboard',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.menuModel,
                    updateCallback: () => setState(() {}),
                    child: MenuWidget(
                      dashboard: true,
                      companyProfile: false,
                      purchase: false,
                      parts: false,
                      vendors: false,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
                          child: wrapWithModel(
                            model: _model.userwidgetModel,
                            updateCallback: () => setState(() {}),
                            child: UserwidgetWidget(
                              visibleSettings: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: MediaQuery.of(context).size.height * 0.7,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: DefaultTabController(
                                length: 2,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      labelStyle:
                                          FlutterFlowTheme.of(context).title2,
                                      indicatorColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                      tabs: [
                                        Tab(
                                          text: 'Purchases',
                                        ),
                                        Tab(
                                          text: 'Sales',
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.ordersAndOpenRFQsModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: OrdersAndOpenRFQsWidget(
                                              purchases: true,
                                              sales: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.ordersAndOpenRFQsModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            updateOnChange: true,
                                            child: OrdersAndOpenRFQsWidget(
                                              purchases: false,
                                              sales: true,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
