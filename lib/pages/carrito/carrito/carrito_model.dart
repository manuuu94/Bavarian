import '/auth/firebase_auth/auth_util.dart';
import '/components/internal_drawer/internal_drawer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarritoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for InternalDrawer component.
  late InternalDrawerModel internalDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    internalDrawerModel = createModel(context, () => InternalDrawerModel());
  }

  void dispose() {
    internalDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
