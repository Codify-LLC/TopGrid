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
    _AcceptFlag = await secureStorage.getString('ff_AcceptFlag') ?? _AcceptFlag;
    _NegotiateFlag =
        await secureStorage.getString('ff_NegotiateFlag') ?? _NegotiateFlag;
    _Reject = await secureStorage.getString('ff_Reject') ?? _Reject;
    _createNewPart =
        await secureStorage.getStringList('ff_createNewPart') ?? _createNewPart;
    _partName = await secureStorage.getString('ff_partName') ?? _partName;
    _partNumber = await secureStorage.getString('ff_partNumber') ?? _partNumber;
    _addDescription =
        await secureStorage.getString('ff_addDescription') ?? _addDescription;
    _addedUserName =
        await secureStorage.getStringList('ff_addedUserName') ?? _addedUserName;
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

  List<String> _attachments = [];
  List<String> get attachments => _attachments;
  set attachments(List<String> _value) {
    _attachments = _value;
  }

  void addToAttachments(String _value) {
    _attachments.add(_value);
  }

  void removeFromAttachments(String _value) {
    _attachments.remove(_value);
  }

  void removeAtIndexFromAttachments(int _index) {
    _attachments.removeAt(_index);
  }

  String _AcceptFlag = 'Accept';
  String get AcceptFlag => _AcceptFlag;
  set AcceptFlag(String _value) {
    _AcceptFlag = _value;
    secureStorage.setString('ff_AcceptFlag', _value);
  }

  void deleteAcceptFlag() {
    secureStorage.delete(key: 'ff_AcceptFlag');
  }

  String _NegotiateFlag = 'Negotiate';
  String get NegotiateFlag => _NegotiateFlag;
  set NegotiateFlag(String _value) {
    _NegotiateFlag = _value;
    secureStorage.setString('ff_NegotiateFlag', _value);
  }

  void deleteNegotiateFlag() {
    secureStorage.delete(key: 'ff_NegotiateFlag');
  }

  String _Reject = 'Reject';
  String get Reject => _Reject;
  set Reject(String _value) {
    _Reject = _value;
    secureStorage.setString('ff_Reject', _value);
  }

  void deleteReject() {
    secureStorage.delete(key: 'ff_Reject');
  }

  List<String> _createNewPart = [];
  List<String> get createNewPart => _createNewPart;
  set createNewPart(List<String> _value) {
    _createNewPart = _value;
    secureStorage.setStringList('ff_createNewPart', _value);
  }

  void deleteCreateNewPart() {
    secureStorage.delete(key: 'ff_createNewPart');
  }

  void addToCreateNewPart(String _value) {
    _createNewPart.add(_value);
    secureStorage.setStringList('ff_createNewPart', _createNewPart);
  }

  void removeFromCreateNewPart(String _value) {
    _createNewPart.remove(_value);
    secureStorage.setStringList('ff_createNewPart', _createNewPart);
  }

  void removeAtIndexFromCreateNewPart(int _index) {
    _createNewPart.removeAt(_index);
    secureStorage.setStringList('ff_createNewPart', _createNewPart);
  }

  String _partName = '';
  String get partName => _partName;
  set partName(String _value) {
    _partName = _value;
    secureStorage.setString('ff_partName', _value);
  }

  void deletePartName() {
    secureStorage.delete(key: 'ff_partName');
  }

  String _partNumber = '';
  String get partNumber => _partNumber;
  set partNumber(String _value) {
    _partNumber = _value;
    secureStorage.setString('ff_partNumber', _value);
  }

  void deletePartNumber() {
    secureStorage.delete(key: 'ff_partNumber');
  }

  String _partType = '';
  String get partType => _partType;
  set partType(String _value) {
    _partType = _value;
  }

  String _addDescription = '';
  String get addDescription => _addDescription;
  set addDescription(String _value) {
    _addDescription = _value;
    secureStorage.setString('ff_addDescription', _value);
  }

  void deleteAddDescription() {
    secureStorage.delete(key: 'ff_addDescription');
  }

  bool _createPartForm = false;
  bool get createPartForm => _createPartForm;
  set createPartForm(bool _value) {
    _createPartForm = _value;
  }

  List<String> _addedUserName = [];
  List<String> get addedUserName => _addedUserName;
  set addedUserName(List<String> _value) {
    _addedUserName = _value;
    secureStorage.setStringList('ff_addedUserName', _value);
  }

  void deleteAddedUserName() {
    secureStorage.delete(key: 'ff_addedUserName');
  }

  void addToAddedUserName(String _value) {
    _addedUserName.add(_value);
    secureStorage.setStringList('ff_addedUserName', _addedUserName);
  }

  void removeFromAddedUserName(String _value) {
    _addedUserName.remove(_value);
    secureStorage.setStringList('ff_addedUserName', _addedUserName);
  }

  void removeAtIndexFromAddedUserName(int _index) {
    _addedUserName.removeAt(_index);
    secureStorage.setStringList('ff_addedUserName', _addedUserName);
  }

  bool _createNewUser = false;
  bool get createNewUser => _createNewUser;
  set createNewUser(bool _value) {
    _createNewUser = _value;
  }

  bool _AditionNote = false;
  bool get AditionNote => _AditionNote;
  set AditionNote(bool _value) {
    _AditionNote = _value;
  }

  List<DocumentReference> _selectedParts = [];
  List<DocumentReference> get selectedParts => _selectedParts;
  set selectedParts(List<DocumentReference> _value) {
    _selectedParts = _value;
  }

  void addToSelectedParts(DocumentReference _value) {
    _selectedParts.add(_value);
  }

  void removeFromSelectedParts(DocumentReference _value) {
    _selectedParts.remove(_value);
  }

  void removeAtIndexFromSelectedParts(int _index) {
    _selectedParts.removeAt(_index);
  }

  bool _encryptionFlag = true;
  bool get encryptionFlag => _encryptionFlag;
  set encryptionFlag(bool _value) {
    _encryptionFlag = _value;
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
