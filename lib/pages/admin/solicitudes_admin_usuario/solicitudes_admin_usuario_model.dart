import '/auth/firebase_auth/auth_util.dart';
import '/components/internal_drawer/internal_drawer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitudesAdminUsuarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  // State field(s) for correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // Model for InternalDrawer component.
  late InternalDrawerModel internalDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    internalDrawerModel = createModel(context, () => InternalDrawerModel());
  }

  void dispose() {
    telefonoController?.dispose();
    correoController?.dispose();
    internalDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
