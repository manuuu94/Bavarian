import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'inventario_crear_widget.dart' show InventarioCrearWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventarioCrearModel extends FlutterFlowModel<InventarioCrearWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombreProducto widget.
  TextEditingController? nombreProductoController;
  String? Function(BuildContext, String?)? nombreProductoControllerValidator;
  // State field(s) for descripcionProducto widget.
  TextEditingController? descripcionProductoController;
  String? Function(BuildContext, String?)?
      descripcionProductoControllerValidator;
  // State field(s) for cantidadProducto widget.
  TextEditingController? cantidadProductoController1;
  String? Function(BuildContext, String?)? cantidadProductoController1Validator;
  // State field(s) for imageURL widget.
  TextEditingController? imageURLController;
  String? Function(BuildContext, String?)? imageURLControllerValidator;
  // State field(s) for cantidadProducto widget.
  TextEditingController? cantidadProductoController2;
  String? Function(BuildContext, String?)? cantidadProductoController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreProductoController?.dispose();
    descripcionProductoController?.dispose();
    cantidadProductoController1?.dispose();
    imageURLController?.dispose();
    cantidadProductoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
