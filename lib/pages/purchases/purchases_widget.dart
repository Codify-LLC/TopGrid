import '/components/menu/menu_widget.dart';
import '/components/ongoing_past_r_f_qs/ongoing_past_r_f_qs_widget.dart';
import '/components/orders/orders_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'purchases_model.dart';
export 'purchases_model.dart';

class PurchasesWidget extends StatefulWidget {
  const PurchasesWidget({Key? key}) : super(key: key);

  @override
  _PurchasesWidgetState createState() => _PurchasesWidgetState();
}

class _PurchasesWidgetState extends State<PurchasesWidget> {
  late PurchasesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchasesModel());

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
        title: 'Purchases',
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
                      dashboard: false,
                      companyProfile: false,
                      purchase: true,
                      parts: false,
                      vendors: false,
                      customers: false,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Purchases',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
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
                                        FlutterFlowTheme.of(context).subtitle1,
                                    indicatorColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    tabs: [
                                      Tab(
                                        text: 'Orders',
                                      ),
                                      Tab(
                                        text: 'RFQ',
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        wrapWithModel(
                                          model: _model.ordersModel,
                                          updateCallback: () => setState(() {}),
                                          updateOnChange: true,
                                          child: OrdersWidget(
                                            purchases: true,
                                            sales: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.ongoingPastRFQsModel,
                                          updateCallback: () => setState(() {}),
                                          updateOnChange: true,
                                          child: OngoingPastRFQsWidget(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
