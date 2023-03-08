// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:pointycastle/export.dart';
import 'package:pointycastle/paddings/pkcs7.dart';
import 'package:pointycastle/modes/gcm.dart';

Future openEncryptedFiles(
  String fileURL,
  String fileName,
  String password,
) async {
  // Add your function code here!
  final encryptedData = await fileURL.getData();
  final passwordBytes = utf8.encode(password);
  final key =
      KeyParameter(Uint8List.fromList(sha256.convert(passwordBytes).bytes));

  final encryptor = BlockCipher('AES');
  encryptor.init(true, key);

  fileBytes = encryptor.process(Uint8List.fromList(encryptedData));
}
