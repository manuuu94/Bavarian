import '/auth/firebase_auth/auth_util.dart';
import '/components/internal_drawer/internal_drawer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevaCotizacionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_nombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txt_peso widget.
  TextEditingController? txtPesoController;
  String? Function(BuildContext, String?)? txtPesoControllerValidator;
  // State field(s) for txt_tipo widget.
  TextEditingController? txtTipoController;
  String? Function(BuildContext, String?)? txtTipoControllerValidator;
  // State field(s) for txt_enlace widget.
  TextEditingController? txtEnlaceController;
  String? Function(BuildContext, String?)? txtEnlaceControllerValidator;
  // Model for InternalDrawer component.
  late InternalDrawerModel internalDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    internalDrawerModel = createModel(context, () => InternalDrawerModel());
  }

  void dispose() {
    txtNombreController?.dispose();
    txtPesoController?.dispose();
    txtTipoController?.dispose();
    txtEnlaceController?.dispose();
    internalDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
