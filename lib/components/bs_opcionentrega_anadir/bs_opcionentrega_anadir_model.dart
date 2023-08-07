import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsOpcionentregaAnadirModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreDir widget.
  TextEditingController? txtNombreDirController;
  String? Function(BuildContext, String?)? txtNombreDirControllerValidator;
  // State field(s) for txtDirCompleta widget.
  TextEditingController? txtDirCompletaController;
  String? Function(BuildContext, String?)? txtDirCompletaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreDirController?.dispose();
    txtDirCompletaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
