import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for contraLogin widget.
  TextEditingController? contraLoginController;
  late bool contraLoginVisibility;
  String? Function(BuildContext, String?)? contraLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraLoginVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    contraLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
