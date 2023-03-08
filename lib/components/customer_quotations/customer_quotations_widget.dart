import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_quotations_model.dart';
export 'customer_quotations_model.dart';

class CustomerQuotationsWidget extends StatefulWidget {
  const CustomerQuotationsWidget({
    Key? key,
    this.rfqDocument,
    this.switchToChat,
  }) : super(key: key);

  final RequestForQuotationRecord? rfqDocument;
  final Future<dynamic> Function()? switchToChat;

  @override
  _CustomerQuotationsWidgetState createState() =>
      _CustomerQuotationsWidgetState();
}

class _CustomerQuotationsWidgetState extends State<CustomerQuotationsWidget> {
  late CustomerQuotationsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerQuotationsModel());

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

    return StreamBuilder<List<QuotationRecord>>(
      stream: queryQuotationRecord(
        queryBuilder: (quotationRecord) => quotationRecord.where('rfq_ref',
            isEqualTo: widget.rfqDocument!.reference),
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
        List<QuotationRecord> containerQuotationRecordList = snapshot.data!;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    final quotation = containerQuotationRecordList.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(quotation.length, (quotationIndex) {
                        final quotationItem = quotation[quotationIndex];
                        return FutureBuilder<UsersRecord>(
                          future: UsersRecord.getDocumentOnce(
                              quotationItem.vendorRef!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final listTileUsersRecord = snapshot.data!;
                            return InkWell(
                              onTap: () async {
                                setState(() {
                                  _model.selectedUser = listTileUsersRecord;
                                  _model.selectedQuotation = quotationItem;
                                });
                              },
                              child: ListTile(
                                title: Text(
                                  listTileUsersRecord.displayName!,
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 20.0,
                                ),
                                tileColor: Color(0x331181DA),
                                dense: false,
                              ),
                            );
                          },
                        );
                      }),
                    );
                  },
                ),
              ),
              if (containerQuotationRecordList.length > 0)
                Expanded(
                  flex: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 1.0,
                    decoration: BoxDecoration(
                      color: Color(0x1A2F9DD9),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(_model.selectedUser !=
                                  null
                              ? _model.selectedUser!.reference
                              : containerQuotationRecordList.first.vendorRef!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final containerUsersRecord = snapshot.data!;
                            return ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(12.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height * 0.5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 0.5,
                                  ),
                                ),
                                child: Visibility(
                                  visible: containerUsersRecord != null,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            containerUsersRecord.displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            _model.selectedQuotation != null
                                                ? _model.selectedQuotation!
                                                    .description!
                                                : containerQuotationRecordList
                                                    .first.description!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: FutureBuilder<QuotationRecord>(
                                            future: QuotationRecord
                                                .getDocumentOnce(_model
                                                            .selectedQuotation !=
                                                        null
                                                    ? _model.selectedQuotation!
                                                        .reference
                                                    : containerQuotationRecordList
                                                        .first.reference),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final wrapQuotationRecord =
                                                  snapshot.data!;
                                              return Builder(
                                                builder: (context) {
                                                  final file =
                                                      wrapQuotationRecord
                                                          .attachments!
                                                          .toList();
                                                  return Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 4.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: List.generate(
                                                        file.length,
                                                        (fileIndex) {
                                                      final fileItem =
                                                          file[fileIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        2.0,
                                                                        4.0,
                                                                        2.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .insert_drive_file_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 18.0,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await actions
                                                                          .openEncryptedFiles(
                                                                        fileItem
                                                                            .filePath!,
                                                                        fileItem
                                                                            .fileName!,
                                                                        FFAppState()
                                                                            .EncryptionPassword,
                                                                      );
                                                                    },
                                                                    child: Text(
                                                                      fileItem
                                                                          .fileName!,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            decoration:
                                                                                TextDecoration.underline,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        _model.removeFromFileData(
                                                                            fileItem);
                                                                      });
                                                                      await FirebaseStorage
                                                                          .instance
                                                                          .refFromURL(
                                                                              fileItem.filePath!)
                                                                          .delete();
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .close,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Delivery: ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: _model.selectedQuotation !=
                                                          null
                                                      ? _model
                                                          .selectedQuotation!
                                                          .deliverInDays!
                                                          .toString()
                                                      : containerQuotationRecordList
                                                          .first.deliverInDays!
                                                          .toString(),
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: ' days',
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        if ((widget.rfqDocument!
                                                    .acceptedQuotationRef ==
                                                null) &&
                                            (_model.selectedQuotation != null
                                                ? !containerQuotationRecordList
                                                    .where((e) =>
                                                        e.reference ==
                                                        _model
                                                            .selectedQuotation!
                                                            .reference)
                                                    .toList()
                                                    .first
                                                    .rejected!
                                                : !containerQuotationRecordList
                                                    .first.rejected!))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    final requestForQuotationUpdateData =
                                                        createRequestForQuotationRecordData(
                                                      acceptedQuotationRef:
                                                          containerQuotationRecordList
                                                              .where((e) =>
                                                                  e.vendorRef ==
                                                                  containerUsersRecord
                                                                      .reference)
                                                              .toList()
                                                              .first
                                                              .reference,
                                                      acceptedVendorRef:
                                                          containerUsersRecord
                                                              .reference,
                                                      acceptedQuotation: true,
                                                      delivered: false,
                                                    );
                                                    await widget
                                                        .rfqDocument!.reference
                                                        .update(
                                                            requestForQuotationUpdateData);
                                                  },
                                                  text: 'Accept',
                                                  icon: Icon(
                                                    Icons.check,
                                                    size: 16.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 130.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.transparent,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor1,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    final quotationUpdateData =
                                                        createQuotationRecordData(
                                                      rejected: true,
                                                      accepted: false,
                                                    );
                                                    await containerQuotationRecordList
                                                        .where((e) =>
                                                            e.vendorRef ==
                                                            containerUsersRecord
                                                                .reference)
                                                        .toList()
                                                        .first
                                                        .reference
                                                        .update(
                                                            quotationUpdateData);
                                                  },
                                                  text: 'Reject',
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: 16.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 130.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.transparent,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Negotiate',
                                                      icon: Icon(
                                                        Icons
                                                            .chat_bubble_outline_outlined,
                                                        size: 16.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 130.0,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Colors.transparent,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Text(
                                            () {
                                              if ((_model.selectedQuotation !=
                                                      null) &&
                                                  (_model.selectedQuotation!
                                                          .timestamp !=
                                                      null)) {
                                                return dateTimeFormat(
                                                  'jm',
                                                  _model.selectedQuotation!
                                                      .timestamp!,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                );
                                              } else if (containerQuotationRecordList
                                                      .first.timestamp !=
                                                  null) {
                                                return dateTimeFormat(
                                                  'jm',
                                                  containerQuotationRecordList
                                                      .first.timestamp!,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                );
                                              } else {
                                                return '';
                                              }
                                            }(),
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
