import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'bs_edita_imagen_widget.dart' show BsEditaImagenWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsEditaImagenModel extends FlutterFlowModel<BsEditaImagenWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtURL widget.
  TextEditingController? txtURLController;
  String? Function(BuildContext, String?)? txtURLControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtURLController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
