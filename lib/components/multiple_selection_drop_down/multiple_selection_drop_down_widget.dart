import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'multiple_selection_drop_down_model.dart';
export 'multiple_selection_drop_down_model.dart';

class MultipleSelectionDropDownWidget extends StatefulWidget {
  const MultipleSelectionDropDownWidget({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  _MultipleSelectionDropDownWidgetState createState() =>
      _MultipleSelectionDropDownWidgetState();
}

class _MultipleSelectionDropDownWidgetState
    extends State<MultipleSelectionDropDownWidget> {
  late MultipleSelectionDropDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MultipleSelectionDropDownModel());

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: double.infinity,
        height: widget.height,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: StreamBuilder<List<CompanyUsersRecord>>(
          stream: queryCompanyUsersRecord(
            queryBuilder: (companyUsersRecord) =>
                companyUsersRecord.whereIn('user_type', ['vendor', 'vendors']),
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
            List<CompanyUsersRecord> listViewCompanyUsersRecordList =
                snapshot.data!;
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: listViewCompanyUsersRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewCompanyUsersRecord =
                    listViewCompanyUsersRecordList[listViewIndex];
                return Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Color(0xFF95A1AC),
                  ),
                  child: CheckboxListTile(
                    value: _model.checkboxListTileValueMap[
                            listViewCompanyUsersRecord] ??=
                        FFAppState()
                            .selectedVendors
                            .contains(listViewCompanyUsersRecord.reference),
                    onChanged: (newValue) async {
                      setState(() => _model.checkboxListTileValueMap[
                          listViewCompanyUsersRecord] = newValue!);
                      if (newValue!) {
                        setState(() {
                          FFAppState().addToSelectedVendors(
                              listViewCompanyUsersRecord.reference);
                        });
                      } else {
                        setState(() {
                          FFAppState().removeFromSelectedVendors(
                              listViewCompanyUsersRecord.reference);
                        });
                      }
                    },
                    title: Text(
                      listViewCompanyUsersRecord.name!,
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).primaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
