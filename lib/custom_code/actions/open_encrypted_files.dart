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
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'dart:html' as html;

Future openEncryptedFiles(
  String fileURL,
  String fileName,
  String password,
) async {
  // Add your function code here!
  final encryptedData = await FirebaseStorage.instance.ref(fileURL).getData();
  final passwordBytes = utf8.encode(password);
  final key =
      KeyParameter(Uint8List.fromList(sha256.convert(passwordBytes).bytes));

  final encryptor = BlockCipher('AES');
  encryptor.init(true, key);

  final fileBytes = encryptor.process(encryptedData!);

  final blob = html.Blob([fileBytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.document.createElement('a') as html.AnchorElement
    ..href = url
    ..download = fileName;
  html.document.body?.append(anchor);
  anchor.click();
  html.document.body?.children.remove(anchor);
  html.Url.revokeObjectUrl(url);
}
