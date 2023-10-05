import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_edita_imagen/bs_edita_imagen_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'bs_editar_perfil_widget.dart' show BsEditarPerfilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsEditarPerfilModel extends FlutterFlowModel<BsEditarPerfilWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEditName widget.
  TextEditingController? txtEditNameController;
  String? Function(BuildContext, String?)? txtEditNameControllerValidator;
  // State field(s) for txtPhone widget.
  TextEditingController? txtPhoneController;
  String? Function(BuildContext, String?)? txtPhoneControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtEditNameController?.dispose();
    txtPhoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
