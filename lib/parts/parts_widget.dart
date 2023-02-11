import '../backend/backend.dart';
import '../components/empty_animation_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'parts_model.dart';
export 'parts_model.dart';

class PartsWidget extends StatefulWidget {
  const PartsWidget({Key? key}) : super(key: key);

  @override
  _PartsWidgetState createState() => _PartsWidgetState();
}

class _PartsWidgetState extends State<PartsWidget> {
  late PartsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartsModel());

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
        title: 'Parts',
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
                      purchase: false,
                      parts: false,
                      vendors: false,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Parts',
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                                badges.Badge(
                                  badgeContent: Text(
                                    '1',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 8,
                                        ),
                                  ),
                                  showBadge: true,
                                  shape: badges.BadgeShape.circle,
                                  badgeColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  elevation: 4,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6, 6, 6, 6),
                                  position: badges.BadgePosition.topStart(),
                                  animationType:
                                      badges.BadgeAnimationType.scale,
                                  toAnimate: true,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Icon(
                                            Icons.notifications_none,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Notification',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Parts List',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 16,
                                      ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('CreateNewPart');
                                  },
                                  text: 'Create New Part',
                                  options: FFButtonOptions(
                                    width: 150,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          fontSize: 12,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 10,
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final part =
                                            FFAppState().selectedParts.toList();
                                        if (part.isEmpty) {
                                          return Center(
                                            child: EmptyAnimationWidget(),
                                          );
                                        }
                                        return Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: DataTable2(
                                            columns: [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'S.No',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.06,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Part Name',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.12,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Part Description',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.16,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Part Type',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.16,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Description',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.12,
                                              ),
                                            ],
                                            rows: part
                                                .mapIndexed((partIndex,
                                                        partItem) =>
                                                    [
                                                      Text(
                                                        partIndex.toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      FutureBuilder<PartRecord>(
                                                        future: PartRecord
                                                            .getDocumentOnce(
                                                                partItem),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final textPartRecord =
                                                              snapshot.data!;
                                                          return Text(
                                                            textPartRecord
                                                                .partName!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<PartRecord>(
                                                        future: PartRecord
                                                            .getDocumentOnce(
                                                                partItem),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final textPartRecord =
                                                              snapshot.data!;
                                                          return Text(
                                                            textPartRecord
                                                                .description!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<PartRecord>(
                                                        future: PartRecord
                                                            .getDocumentOnce(
                                                                partItem),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final textPartRecord =
                                                              snapshot.data!;
                                                          return Text(
                                                            textPartRecord
                                                                .partType!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<PartRecord>(
                                                        future: PartRecord
                                                            .getDocumentOnce(
                                                                partItem),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final textPartRecord =
                                                              snapshot.data!;
                                                          return Text(
                                                            textPartRecord
                                                                .description!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList())
                                                .map((e) => DataRow(cells: e))
                                                .toList(),
                                            headingRowColor:
                                                MaterialStateProperty.all(
                                              Colors.white,
                                            ),
                                            headingRowHeight: 56,
                                            dataRowColor:
                                                MaterialStateProperty.all(
                                              Colors.white,
                                            ),
                                            dataRowHeight: 56,
                                            border: TableBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            dividerThickness: 0,
                                            columnSpacing: 2,
                                            showBottomBorder: false,
                                            minWidth: 49,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
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
  }
}
