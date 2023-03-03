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

class RCPtabbarModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String pageType = 'requirements';

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for rfqRequirements component.
  late RfqRequirementsModel rfqRequirementsModel;
  // Model for rfqChat component.
  late RfqChatModel rfqChatModel;
  // Model for VendorQuotations component.
  late VendorQuotationsModel vendorQuotationsModel;
  // Model for CustomerQuotations component.
  late CustomerQuotationsModel customerQuotationsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    rfqRequirementsModel = createModel(context, () => RfqRequirementsModel());
    rfqChatModel = createModel(context, () => RfqChatModel());
    vendorQuotationsModel = createModel(context, () => VendorQuotationsModel());
    customerQuotationsModel =
        createModel(context, () => CustomerQuotationsModel());
  }

  void dispose() {
    menuModel.dispose();
    rfqRequirementsModel.dispose();
    rfqChatModel.dispose();
    vendorQuotationsModel.dispose();
    customerQuotationsModel.dispose();
  }

  /// Additional helper methods are added here.

}
