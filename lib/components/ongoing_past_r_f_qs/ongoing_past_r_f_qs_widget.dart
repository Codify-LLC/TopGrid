import '/backend/backend.dart';
import '/components/empty_animation/empty_animation_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ongoing_past_r_f_qs_model.dart';
export 'ongoing_past_r_f_qs_model.dart';

class OngoingPastRFQsWidget extends StatefulWidget {
  const OngoingPastRFQsWidget({Key? key}) : super(key: key);

  @override
  _OngoingPastRFQsWidgetState createState() => _OngoingPastRFQsWidgetState();
}

class _OngoingPastRFQsWidgetState extends State<OngoingPastRFQsWidget> {
  late OngoingPastRFQsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OngoingPastRFQsModel());

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

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          TabBar(
            labelColor: FlutterFlowTheme.of(context).primaryColor,
            labelStyle: FlutterFlowTheme.of(context).bodyText1,
            indicatorColor: FlutterFlowTheme.of(context).primaryColor,
            tabs: [
              Tab(
                text: 'RFQ - Open',
              ),
              Tab(
                text: 'RFQ - Close',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                StreamBuilder<List<RequestForQuotationRecord>>(
                  stream: queryRequestForQuotationRecord(
                    queryBuilder: (requestForQuotationRecord) =>
                        requestForQuotationRecord
                            .whereIn('rfq_status', ['Negotiate', 'Ongoing']),
                  ),
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
                    List<RequestForQuotationRecord>
                        dataTableRequestForQuotationRecordList = snapshot.data!;
                    if (dataTableRequestForQuotationRecordList.isEmpty) {
                      return Center(
                        child: EmptyAnimationWidget(),
                      );
                    }
                    return DataTable2(
                      columns: [
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'S.No',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.06,
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'RFQ No.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.1,
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'RFQ Name',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Descriptions',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Status',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ],
                      rows: dataTableRequestForQuotationRecordList
                          .mapIndexed((dataTableIndex,
                                  dataTableRequestForQuotationRecord) =>
                              [
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    (dataTableIndex + 1).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord
                                        .reference.id,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord.rfqName!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: AutoSizeText(
                                    dataTableRequestForQuotationRecord
                                        .rfqDescription!,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord
                                        .rfqStatus!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ].map((c) => DataCell(c)).toList())
                          .map((e) => DataRow(cells: e))
                          .toList(),
                      headingRowColor: MaterialStateProperty.all(
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      headingRowHeight: 56.0,
                      dataRowColor: MaterialStateProperty.all(
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      dataRowHeight: 56.0,
                      border: TableBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      dividerThickness: 1.0,
                      showBottomBorder: false,
                      minWidth: 49.0,
                    );
                  },
                ),
                StreamBuilder<List<RequestForQuotationRecord>>(
                  stream: queryRequestForQuotationRecord(
                    queryBuilder: (requestForQuotationRecord) =>
                        requestForQuotationRecord
                            .whereIn('rfq_status', ['Negotiate', 'Ongoing']),
                  ),
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
                    List<RequestForQuotationRecord>
                        dataTableRequestForQuotationRecordList = snapshot.data!;
                    if (dataTableRequestForQuotationRecordList.isEmpty) {
                      return Center(
                        child: EmptyAnimationWidget(),
                      );
                    }
                    return DataTable2(
                      columns: [
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'S.No',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.06,
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'RFQ No.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.1,
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'RFQ Name',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Descriptions',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Status',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          fixedWidth: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ],
                      rows: dataTableRequestForQuotationRecordList
                          .mapIndexed((dataTableIndex,
                                  dataTableRequestForQuotationRecord) =>
                              [
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableIndex.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord
                                        .reference.id,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord.rfqName!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord
                                        .rfqDescription!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'RCPtabbar',
                                      queryParams: {
                                        'rfqRef': serializeParam(
                                          dataTableRequestForQuotationRecord
                                              .reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Text(
                                    dataTableRequestForQuotationRecord
                                        .rfqStatus!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ].map((c) => DataCell(c)).toList())
                          .map((e) => DataRow(cells: e))
                          .toList(),
                      headingRowColor: MaterialStateProperty.all(
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      headingRowHeight: 56.0,
                      dataRowColor: MaterialStateProperty.all(
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      dataRowHeight: 56.0,
                      border: TableBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      dividerThickness: 1.0,
                      showBottomBorder: false,
                      minWidth: 49.0,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
