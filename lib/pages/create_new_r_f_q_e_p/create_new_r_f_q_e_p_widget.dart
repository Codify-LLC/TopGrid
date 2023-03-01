import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu/menu_widget.dart';
import '/components/multiple_selection_drop_down/multiple_selection_drop_down_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_new_r_f_q_e_p_model.dart';
export 'create_new_r_f_q_e_p_model.dart';

class CreateNewRFQEPWidget extends StatefulWidget {
  const CreateNewRFQEPWidget({Key? key}) : super(key: key);

  @override
  _CreateNewRFQEPWidgetState createState() => _CreateNewRFQEPWidgetState();
}

class _CreateNewRFQEPWidgetState extends State<CreateNewRFQEPWidget> {
  late CreateNewRFQEPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateNewRFQEPModel());

    _model.quantityController ??= TextEditingController();
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

    return StreamBuilder<List<CompanyUsersRecord>>(
      stream: queryCompanyUsersRecord(
        queryBuilder: (companyUsersRecord) =>
            companyUsersRecord.where('user_type', isEqualTo: 'vendor'),
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
        List<CompanyUsersRecord> createNewRFQEPCompanyUsersRecordList =
            snapshot.data!;
        return Title(
            title: 'CreateNewRFQ-EP',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
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
                          customers: false,
                        ),
                      ),
                      Expanded(
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: StreamBuilder<List<PartRecord>>(
                              stream: queryPartRecord(
                                queryBuilder: (partRecord) => partRecord.where(
                                    'part_name',
                                    isEqualTo: FFAppState().selectedPart != ''
                                        ? FFAppState().selectedPart
                                        : null),
                                singleRecord: true,
                              ),
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
                                List<PartRecord> columnPartRecordList =
                                    snapshot.data!;
                                final columnPartRecord =
                                    columnPartRecordList.isNotEmpty
                                        ? columnPartRecordList.first
                                        : null;
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 48.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Create RFQ - Existing Part',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                context.pop();
                                              },
                                              child: Text(
                                                '< Back',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 18.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          custom_widgets.PartSelector(
                                            width: 250.0,
                                            height: 200.0,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 48.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: Text(
                                                      'Assign Vendors',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                              ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      if (_model
                                                          .vendorDropDown) {
                                                        setState(() {
                                                          _model.vendorDropDown =
                                                              false;
                                                        });
                                                      } else {
                                                        setState(() {
                                                          _model.vendorDropDown =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 250.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 0.5,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState()
                                                                          .selectedVendors
                                                                          .length >
                                                                      0
                                                                  ? '${FFAppState().selectedVendors.length.toString()} Vendor Selected'
                                                                  : 'Select Vendors',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                            ),
                                                          ),
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              setState(() => _model
                                                                      .vendorDropDown =
                                                                  !_model
                                                                      .vendorDropDown);
                                                            },
                                                            value: _model
                                                                .vendorDropDown,
                                                            onIcon: Icon(
                                                              Icons
                                                                  .arrow_drop_up,
                                                              color:
                                                                  Colors.black,
                                                              size: 25.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .arrow_drop_down,
                                                              color:
                                                                  Colors.black,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  if (_model.vendorDropDown)
                                                    wrapWithModel(
                                                      model: _model
                                                          .multipleSelectionDropDownModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      updateOnChange: true,
                                                      child:
                                                          MultipleSelectionDropDownWidget(
                                                        optionsList:
                                                            createNewRFQEPCompanyUsersRecordList
                                                                .map((e) =>
                                                                    valueOrDefault<
                                                                        String>(
                                                                      e.name,
                                                                      'N / A',
                                                                    ))
                                                                .toList(),
                                                        width: 250.0,
                                                        height: 100.0,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: Text(
                                                    'No. of Quantity (Units)',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .quantityController,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .quantityControllerValidator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .allow(
                                                              RegExp('[0-9]'))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 48.0, 0.0, 12.0),
                                        child: Text(
                                          'Choose Requirements Type',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        options: [
                                          'RFQ for Mold',
                                          'RFQ for Parts'
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.selectRequirementTypeValue =
                                                val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.24,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        hintText: 'Select',
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderWidth: 1.0,
                                        borderRadius: 4.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        hidesUnderline: true,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 48.0, 0.0, 12.0),
                                        child: Text(
                                          'Parts Descriptions',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 4.0, 0.0),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxHeight: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 32.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                            .addDescriptionController ??=
                                                        TextEditingController(
                                                      text: columnPartRecord !=
                                                              null
                                                          ? columnPartRecord!
                                                              .description
                                                          : ' ',
                                                    ),
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    maxLines: 10,
                                                    minLines: 1,
                                                    validator: _model
                                                        .addDescriptionControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 12.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final file = _model.fileData
                                                        .toList();
                                                    return Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
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
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    child: Icon(
                                                                      Icons
                                                                          .insert_drive_file_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      fileItem,
                                                                      r'''$.fileName''',
                                                                    ).toString(),
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
                                                                  Expanded(
                                                                    child:
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
                                                                            _model.removeFromFileData(fileItem);
                                                                          });
                                                                          await FirebaseStorage
                                                                              .instance
                                                                              .refFromURL(getJsonField(
                                                                                fileItem,
                                                                                r'''$.filePath''',
                                                                              ).toString())
                                                                              .delete();
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              18.0,
                                                                        ),
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
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 12.0, 12.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      _model.newFile =
                                                          await actions
                                                              .pickFile(
                                                        context,
                                                        valueOrDefault<bool>(
                                                            currentUserDocument
                                                                ?.encryption,
                                                            false),
                                                        currentUserDocument!
                                                            .companyRef!.id,
                                                      );
                                                      setState(() {
                                                        _model.addToFileData(
                                                            _model.newFile!);
                                                      });

                                                      setState(() {});
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .attachment_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          size: 20.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Attach Files',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 24.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Are you sure, you want to exit?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: Text(
                                                                        'Cancel'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: Text(
                                                                        'Confirm'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    context.pop();
                                                  }
                                                },
                                                text: 'Cancel',
                                                options: FFButtonOptions(
                                                  width: 150.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    if (_model
                                                            .selectRequirementTypeValue ==
                                                        null) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .clearSnackBars();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Please select requirement type',
                                                            style: TextStyle(),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                      );
                                                      return;
                                                    }
                                                    if (columnPartRecord !=
                                                        null) {
                                                      final usersUpdateData = {
                                                        'app_state_requirements':
                                                            FieldValue
                                                                .arrayUnion([
                                                          getRequirementFirestoreData(
                                                            createRequirementStruct(
                                                              quantity: int
                                                                  .tryParse(_model
                                                                      .quantityController
                                                                      .text),
                                                              requirementType:
                                                                  _model
                                                                      .selectRequirementTypeValue,
                                                              description: _model
                                                                  .addDescriptionController
                                                                  .text,
                                                              part:
                                                                  columnPartRecord!
                                                                      .reference,
                                                              fieldValues: {
                                                                'vendors':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  createNewRFQEPCompanyUsersRecordList
                                                                      .where((e) => FFAppState()
                                                                          .selectedVendors
                                                                          .contains(
                                                                              e.name))
                                                                      .toList()
                                                                      .first
                                                                      .reference
                                                                ]),
                                                              },
                                                              clearUnsetFields:
                                                                  true,
                                                            ),
                                                            true,
                                                          )
                                                        ]),
                                                      };
                                                      await currentUserReference!
                                                          .update(
                                                              usersUpdateData);
                                                      context.pop();
                                                    }
                                                  },
                                                  text: 'Save',
                                                  options: FFButtonOptions(
                                                    width: 150.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
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
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
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
