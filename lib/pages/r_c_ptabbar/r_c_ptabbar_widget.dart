import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/customer_quotations/customer_quotations_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/rfq_chat/rfq_chat_widget.dart';
import '/components/rfq_requirements/rfq_requirements_widget.dart';
import '/components/vendor_quotations/vendor_quotations_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_c_ptabbar_model.dart';
export 'r_c_ptabbar_model.dart';

class RCPtabbarWidget extends StatefulWidget {
  const RCPtabbarWidget({
    Key? key,
    this.rfqRef,
  }) : super(key: key);

  final DocumentReference? rfqRef;

  @override
  _RCPtabbarWidgetState createState() => _RCPtabbarWidgetState();
}

class _RCPtabbarWidgetState extends State<RCPtabbarWidget> {
  late RCPtabbarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RCPtabbarModel());

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

    return StreamBuilder<RequestForQuotationRecord>(
      stream: RequestForQuotationRecord.getDocument(widget.rfqRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final rCPtabbarRequestForQuotationRecord = snapshot.data!;
        return Title(
            title: 'RCPtabbar',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.menuModel,
                        updateCallback: () => setState(() {}),
                        child: MenuWidget(
                          dashboard: false,
                          companyProfile: false,
                          purchase: false,
                          parts: false,
                          vendors: false,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    rCPtabbarRequestForQuotationRecord.rfqName!,
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pop();
                                    },
                                    child: Text(
                                      '< BACK',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'RFQ No. ',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 32.0, 0.0),
                                      child: Text(
                                        rCPtabbarRequestForQuotationRecord
                                            .reference.id,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Status:',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        rCPtabbarRequestForQuotationRecord
                                            .rfqStatus!,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 48.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    _model.pageType =
                                                        'requirements';
                                                  });
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Requirements',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: _model
                                                                            .pageType ==
                                                                        'requirements'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                    ),
                                                    if (_model.pageType ==
                                                        'requirements')
                                                      Divider(
                                                        height: 10.0,
                                                        thickness: 3.0,
                                                        indent: 0.0,
                                                        endIndent: 0.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    _model.pageType = 'chats';
                                                  });
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'Chats',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: _model
                                                                            .pageType ==
                                                                        'chats'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                    ),
                                                    if (_model.pageType ==
                                                        'chats')
                                                      Divider(
                                                        height: 10.0,
                                                        thickness: 3.0,
                                                        indent: 0.0,
                                                        endIndent: 0.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    _model.pageType =
                                                        'quotation';
                                                  });
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'Quotation',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: _model
                                                                            .pageType ==
                                                                        'quotation'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                    ),
                                                    if (_model.pageType ==
                                                        'quotation')
                                                      Divider(
                                                        height: 10.0,
                                                        thickness: 3.0,
                                                        indent: 0.0,
                                                        endIndent: 0.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if ((valueOrDefault(
                                                currentUserDocument?.userType,
                                                '') ==
                                            'vendor') ||
                                        (valueOrDefault(
                                                currentUserDocument?.userType,
                                                '') ==
                                            'vendors'))
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Modify',
                                              options: FFButtonOptions(
                                                width: 130.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (_model.pageType == 'requirements')
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.rfqRequirementsModel,
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: RfqRequirementsWidget(
                                      rfqRequirements:
                                          rCPtabbarRequestForQuotationRecord
                                              .partList!
                                              .toList(),
                                    ),
                                  ),
                                ),
                              if (_model.pageType == 'chats')
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.rfqChatModel,
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: RfqChatWidget(
                                      rfqRef:
                                          rCPtabbarRequestForQuotationRecord,
                                    ),
                                  ),
                                ),
                              if ((_model.pageType == 'quotation') &&
                                  ((valueOrDefault(
                                              currentUserDocument?.userType,
                                              '') ==
                                          'vendor') ||
                                      (valueOrDefault(
                                              currentUserDocument?.userType,
                                              '') ==
                                          'vendors')))
                                Expanded(
                                  child: AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.vendorQuotationsModel,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: VendorQuotationsWidget(
                                        rfqDocument:
                                            rCPtabbarRequestForQuotationRecord,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((_model.pageType == 'quotation') &&
                                  ((valueOrDefault(
                                              currentUserDocument?.userType,
                                              '') !=
                                          'vendor') ||
                                      (valueOrDefault(
                                              currentUserDocument?.userType,
                                              '') !=
                                          'vendors')))
                                Expanded(
                                  child: AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.customerQuotationsModel,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: CustomerQuotationsWidget(
                                        rfqDocument:
                                            rCPtabbarRequestForQuotationRecord,
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
            ));
      },
    );
  }
}
