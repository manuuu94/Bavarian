import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'bs_opcionentrega_anadir_widget.dart' show BsOpcionentregaAnadirWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsOpcionentregaAnadirModel
    extends FlutterFlowModel<BsOpcionentregaAnadirWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreDir widget.
  TextEditingController? txtNombreDirController;
  String? Function(BuildContext, String?)? txtNombreDirControllerValidator;
  // State field(s) for DD_provincia widget.
  String? dDProvinciaValue;
  FormFieldController<String>? dDProvinciaValueController;
  List<ProvincesRecord>? dDProvinciaProvincesRecordListPreviousSnapshot;
  // State field(s) for DD_canton widget.
  String? dDCantonValue;
  FormFieldController<String>? dDCantonValueController;
  List<CantonRecord>? dDCantonCantonRecordListPreviousSnapshot;
  // State field(s) for DD_distrito widget.
  String? dDDistritoValue;
  FormFieldController<String>? dDDistritoValueController;
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
