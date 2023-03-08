import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _showDrawerFull =
        await secureStorage.getBool('ff_showDrawerFull') ?? _showDrawerFull;
    _EncryptionPassword =
        await secureStorage.getString('ff_EncryptionPassword') ??
            _EncryptionPassword;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _showDrawerFull = false;
  bool get showDrawerFull => _showDrawerFull;
  set showDrawerFull(bool _value) {
    _showDrawerFull = _value;
    secureStorage.setBool('ff_showDrawerFull', _value);
  }

  void deleteShowDrawerFull() {
    secureStorage.delete(key: 'ff_showDrawerFull');
  }

  bool _encryptionFlag = true;
  bool get encryptionFlag => _encryptionFlag;
  set encryptionFlag(bool _value) {
    _encryptionFlag = _value;
  }

  int _selectedPartNum = 0;
  int get selectedPartNum => _selectedPartNum;
  set selectedPartNum(int _value) {
    _selectedPartNum = _value;
  }

  List<DocumentReference> _selectedVendors = [];
  List<DocumentReference> get selectedVendors => _selectedVendors;
  set selectedVendors(List<DocumentReference> _value) {
    _selectedVendors = _value;
  }

  void addToSelectedVendors(DocumentReference _value) {
    _selectedVendors.add(_value);
  }

  void removeFromSelectedVendors(DocumentReference _value) {
    _selectedVendors.remove(_value);
  }

  void removeAtIndexFromSelectedVendors(int _index) {
    _selectedVendors.removeAt(_index);
  }

  List<DocumentReference> _totalRFQVendors = [];
  List<DocumentReference> get totalRFQVendors => _totalRFQVendors;
  set totalRFQVendors(List<DocumentReference> _value) {
    _totalRFQVendors = _value;
  }

  void addToTotalRFQVendors(DocumentReference _value) {
    _totalRFQVendors.add(_value);
  }

  void removeFromTotalRFQVendors(DocumentReference _value) {
    _totalRFQVendors.remove(_value);
  }

  void removeAtIndexFromTotalRFQVendors(int _index) {
    _totalRFQVendors.removeAt(_index);
  }

  String _EncryptionPassword = '6CV@z@4WF2n#2ap\'';
  String get EncryptionPassword => _EncryptionPassword;
  set EncryptionPassword(String _value) {
    _EncryptionPassword = _value;
    secureStorage.setString('ff_EncryptionPassword', _value);
  }

  void deleteEncryptionPassword() {
    secureStorage.delete(key: 'ff_EncryptionPassword');
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
