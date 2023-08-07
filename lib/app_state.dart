import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _FullList = true;
  bool get FullList => _FullList;
  set FullList(bool _value) {
    _FullList = _value;
  }

  bool _CotizacionesList = true;
  bool get CotizacionesList => _CotizacionesList;
  set CotizacionesList(bool _value) {
    _CotizacionesList = _value;
  }

  double _CostoTotal = 0;
  double get CostoTotal => _CostoTotal;
  set CostoTotal(double _value) {
    _CostoTotal = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
