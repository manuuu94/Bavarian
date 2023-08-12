import '/auth/firebase_auth/auth_util.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
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
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  void dispose() {
    txtNombreController?.dispose();
    txtPesoController?.dispose();
    txtTipoController?.dispose();
    txtEnlaceController?.dispose();
    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
