import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rfq_chat_model.dart';
export 'rfq_chat_model.dart';

class RfqChatWidget extends StatefulWidget {
  const RfqChatWidget({
    Key? key,
    this.rfqRef,
  }) : super(key: key);

  final RequestForQuotationRecord? rfqRef;

  @override
  _RfqChatWidgetState createState() => _RfqChatWidgetState();
}

class _RfqChatWidgetState extends State<RfqChatWidget> {
  late RfqChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RfqChatModel());

    _model.textController ??= TextEditingController();
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
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if ((valueOrDefault(currentUserDocument?.userType, '') ==
                  'customer') ||
              (valueOrDefault(currentUserDocument?.userType, '') ==
                  'customers'))
            Expanded(
              child: AuthUserStreamWidget(
                builder: (context) => FutureBuilder<List<UsersRecord>>(
                  future: (_model.firestoreRequestCompleter ??=
                          Completer<List<UsersRecord>>()
                            ..complete(queryUsersRecordOnce(
                              queryBuilder: (usersRecord) => usersRecord.where(
                                  'company_ref',
                                  isEqualTo: widget.rfqRef!.customerCompanyRef),
                            )))
                      .future,
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
                    List<UsersRecord> customersUsersRecordList = snapshot.data!
                        .where((u) => u.uid != currentUserUid)
                        .toList();
                    return RefreshIndicator(
                      onRefresh: () async {
                        setState(() => _model.firestoreRequestCompleter = null);
                        await _model.waitForFirestoreRequestCompleter();
                      },
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: customersUsersRecordList.length,
                        itemBuilder: (context, customersIndex) {
                          final customersUsersRecord =
                              customersUsersRecordList[customersIndex];
                          return InkWell(
                            onTap: () async {
                              setState(() {
                                _model.selectedUser =
                                    customersUsersRecord.reference;
                              });
                            },
                            child: ListTile(
                              title: Text(
                                customersUsersRecord.displayName!,
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                              ),
                              tileColor: customersUsersRecord.reference ==
                                      _model.selectedUser
                                  ? FlutterFlowTheme.of(context).grayIcon
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              dense: false,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          if ((valueOrDefault(currentUserDocument?.userType, '') == 'vendor') ||
              (valueOrDefault(currentUserDocument?.userType, '') == 'vendors'))
            Expanded(
              child: AuthUserStreamWidget(
                builder: (context) => Builder(
                  builder: (context) {
                    final vendors = widget.rfqRef!.vendors!.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: vendors.length,
                      itemBuilder: (context, vendorsIndex) {
                        final vendorsItem = vendors[vendorsIndex];
                        return FutureBuilder<CompanyUsersRecord>(
                          future:
                              CompanyUsersRecord.getDocumentOnce(vendorsItem),
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
                            final listTileCompanyUsersRecord = snapshot.data!;
                            return InkWell(
                              onTap: () async {
                                setState(() {
                                  _model.selectedUser =
                                      listTileCompanyUsersRecord.userDoc;
                                });
                              },
                              child: ListTile(
                                title: Text(
                                  listTileCompanyUsersRecord.name!,
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                tileColor: listTileCompanyUsersRecord.userDoc ==
                                        _model.selectedUser
                                    ? FlutterFlowTheme.of(context).grayIcon
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                dense: false,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [],
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.textController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Type Something...',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.send,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
