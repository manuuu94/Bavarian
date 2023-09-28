import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_detalles_cotizacion/bs_detalles_cotizacion_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cotizaciones_widget.dart' show CotizacionesWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class CotizacionesModel extends FlutterFlowModel<CotizacionesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for txt_search widget.
  TextEditingController? txtSearchController;
  String? Function(BuildContext, String?)? txtSearchControllerValidator;
  List<QuoteRequestsRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  void dispose() {
    menuLateralModel.dispose();
    txtSearchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
