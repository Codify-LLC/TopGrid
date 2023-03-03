import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rfq_requirements_model.dart';
export 'rfq_requirements_model.dart';

class RfqRequirementsWidget extends StatefulWidget {
  const RfqRequirementsWidget({
    Key? key,
    this.rfqRequirements,
  }) : super(key: key);

  final List<RequirementStruct>? rfqRequirements;

  @override
  _RfqRequirementsWidgetState createState() => _RfqRequirementsWidgetState();
}

class _RfqRequirementsWidgetState extends State<RfqRequirementsWidget> {
  late RfqRequirementsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RfqRequirementsModel());

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

    return Builder(
      builder: (context) {
        final requirement = widget.rfqRequirements?.toList() ?? [];
        return DataTable2(
          columns: [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'S.No.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                      ),
                ),
              ),
              fixedWidth: 70.0,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Part  Name',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Part Description',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Requirement Type',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Part Type',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                      ),
                ),
              ),
              fixedWidth: 150.0,
            ),
          ],
          rows: requirement
              .mapIndexed((requirementIndex, requirementItem) => [
                    Text(
                      (requirementIndex + 1).toString(),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    FutureBuilder<PartRecord>(
                      future: PartRecord.getDocumentOnce(requirementItem.part!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        final textPartRecord = snapshot.data!;
                        return Text(
                          textPartRecord.partName!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        );
                      },
                    ),
                    Text(
                      requirementItem.description!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    Text(
                      requirementItem.requirementType!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    FutureBuilder<PartRecord>(
                      future: PartRecord.getDocumentOnce(requirementItem.part!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        final textPartRecord = snapshot.data!;
                        return Text(
                          textPartRecord.partType!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        );
                      },
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
    );
  }
}
