import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_opcionentrega/bs_opcionentrega_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrito_widget.dart' show CarritoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarritoModel extends FlutterFlowModel<CarritoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  void dispose() {
    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
