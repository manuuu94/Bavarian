import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bs_opcionentrega_anadir_model.dart';
export 'bs_opcionentrega_anadir_model.dart';

class BsOpcionentregaAnadirWidget extends StatefulWidget {
  const BsOpcionentregaAnadirWidget({
    Key? key,
    this.opcion,
  }) : super(key: key);

  final DeliveryOptionsRecord? opcion;

  @override
  _BsOpcionentregaAnadirWidgetState createState() =>
      _BsOpcionentregaAnadirWidgetState();
}

class _BsOpcionentregaAnadirWidgetState
    extends State<BsOpcionentregaAnadirWidget> {
  late BsOpcionentregaAnadirModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsOpcionentregaAnadirModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    _model.txtNombreDirController ??= TextEditingController();
    _model.txtDirCompletaController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 593.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).sideBar,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 10.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _model.txtNombreDirController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nombre de la dirección',
                            hintText: 'Nombre de la dirección',
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).sideBarMenu,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).lineColor,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          textAlign: TextAlign.start,
                          validator: _model.txtNombreDirControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 5.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).lineColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x4D101213),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: StreamBuilder<List<ProvincesRecord>>(
                            stream: queryProvincesRecord()
                              ..listen((snapshot) async {
                                List<ProvincesRecord>
                                    dDProvinciaProvincesRecordList = snapshot;
                                if (_model.dDProvinciaProvincesRecordListPreviousSnapshot !=
                                        null &&
                                    !const ListEquality(
                                            ProvincesRecordDocumentEquality())
                                        .equals(
                                            dDProvinciaProvincesRecordList,
                                            _model
                                                .dDProvinciaProvincesRecordListPreviousSnapshot)) {
                                  setState(() {
                                    _model.dDCantonValueController?.reset();
                                    _model.dDDistritoValueController?.reset();
                                  });

                                  setState(() {});
                                }
                                _model.dDProvinciaProvincesRecordListPreviousSnapshot =
                                    snapshot;
                              }),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ProvincesRecord>
                                  dDProvinciaProvincesRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.dDProvinciaValueController ??=
                                        FormFieldController<String>(
                                  _model.dDProvinciaValue ??= '',
                                ),
                                options: dDProvinciaProvincesRecordList
                                    .map((e) => e.name)
                                    .toList(),
                                onChanged: (val) async {
                                  setState(() => _model.dDProvinciaValue = val);
                                  setState(() {
                                    _model.dDCantonValueController?.reset();
                                    _model.dDDistritoValueController?.reset();
                                  });
                                },
                                width: 392.0,
                                height: 50.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Seleccione Provincia...',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 5.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x4D101213),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: StreamBuilder<List<CantonRecord>>(
                            stream: queryCantonRecord(
                              queryBuilder: (cantonRecord) =>
                                  cantonRecord.where(
                                'province',
                                isEqualTo: _model.dDProvinciaValue,
                              ),
                            )..listen((snapshot) async {
                                List<CantonRecord> dDCantonCantonRecordList =
                                    snapshot;
                                if (_model.dDCantonCantonRecordListPreviousSnapshot !=
                                        null &&
                                    !const ListEquality(
                                            CantonRecordDocumentEquality())
                                        .equals(
                                            dDCantonCantonRecordList,
                                            _model
                                                .dDCantonCantonRecordListPreviousSnapshot)) {
                                  setState(() {
                                    _model.dDDistritoValueController?.reset();
                                  });

                                  setState(() {});
                                }
                                _model.dDCantonCantonRecordListPreviousSnapshot =
                                    snapshot;
                              }),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<CantonRecord> dDCantonCantonRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller: _model.dDCantonValueController ??=
                                    FormFieldController<String>(
                                  _model.dDCantonValue ??= '',
                                ),
                                options: dDCantonCantonRecordList
                                    .map((e) => e.name)
                                    .toList(),
                                onChanged: (val) async {
                                  setState(() => _model.dDCantonValue = val);
                                  setState(() {
                                    _model.dDDistritoValueController?.reset();
                                  });
                                },
                                width: 392.0,
                                height: 50.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Seleccione Cantón...',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                disabled: _model.dDProvinciaValue == '',
                                isSearchable: true,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 5.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x4D101213),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: StreamBuilder<List<DistrictsRecord>>(
                            stream: queryDistrictsRecord(
                              queryBuilder: (districtsRecord) =>
                                  districtsRecord.where(
                                'canton',
                                isEqualTo: _model.dDCantonValue,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<DistrictsRecord>
                                  dDDistritoDistrictsRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller: _model.dDDistritoValueController ??=
                                    FormFieldController<String>(
                                  _model.dDDistritoValue ??= '',
                                ),
                                options: dDDistritoDistrictsRecordList
                                    .map((e) => e.name)
                                    .toList(),
                                onChanged: (val) => setState(
                                    () => _model.dDDistritoValue = val),
                                width: 392.0,
                                height: 50.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Seleccione Distrito...',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                disabled: _model.dDCantonValue == '',
                                isSearchable: true,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _model.txtDirCompletaController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Dirección completa',
                            hintText: 'Introduzca dirección completa...',
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).sideBarMenu,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).lineColor,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 5,
                          validator: _model.txtDirCompletaControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 10.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Atrás',
                          options: FFButtonOptions(
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFFF0004),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).text,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 5.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 16.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if ((_model.dDProvinciaValue != '') &&
                                (_model.dDCantonValue != '') &&
                                (_model.dDDistritoValue != '') &&
                                (_model.txtNombreDirController.text != '') &&
                                (_model.txtDirCompletaController.text != '')) {
                              await AddressesRecord.collection
                                  .doc()
                                  .set(createAddressesRecordData(
                                    address:
                                        '${_model.dDProvinciaValue}, ${_model.dDCantonValue}, ${_model.dDDistritoValue}- ${_model.txtDirCompletaController.text}',
                                    nameAddress:
                                        '${_model.txtNombreDirController.text}: ${_model.dDCantonValue}',
                                    uid: currentUserUid,
                                    deliveryOption: widget.opcion?.reference,
                                  ));
                              Navigator.pop(context);
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Campos vacíos'),
                                    content: Text(
                                        '¡Por favor, ingrese todos los campos!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          text: 'Añadir',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).greenConfirm,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).success,
                              width: 5.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
