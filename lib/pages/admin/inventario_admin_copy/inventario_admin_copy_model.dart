import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_detalles_producto/bs_detalles_producto_widget.dart';
import '/components/bs_detalles_producto_admin/bs_detalles_producto_admin_widget.dart';
import '/components/bs_detalles_producto_eliminar/bs_detalles_producto_eliminar_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'inventario_admin_copy_widget.dart' show InventarioAdminCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class InventarioAdminCopyModel
    extends FlutterFlowModel<InventarioAdminCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_search widget.
  TextEditingController? txtSearchController;
  String? Function(BuildContext, String?)? txtSearchControllerValidator;
  List<InventoryRecord> simpleSearchResults = [];
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  void dispose() {
    txtSearchController?.dispose();
    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
