// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:pointycastle/pointycastle.dart';

Future<dynamic> pickFile(
    BuildContext context, bool encryption, String password) async {
  // Add your function code here!

  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          const Text('Uploading File'),
          SizedBox(height: 50, width: 50, child: CircularProgressIndicator())
        ],
      ),
      duration: const Duration(seconds: 60),
    ));
    Uint8List fileBytes = result.files.first.bytes!;
    String fileName = result.files.first.name;

    if (encryption) {
      // Encryption
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
          children: [
            const Text('Encrypting'),
            SizedBox(height: 50, width: 50, child: CircularProgressIndicator())
          ],
        ),
        duration: const Duration(seconds: 60),
      ));
      final passwordBytes = utf8.encode(password);
      final key = KeyParameter(
          await Uint8List.fromList(sha256.convert(passwordBytes).bytes));

      final encryptor = BlockCipher('AES');
      encryptor.init(true, key);

      fileBytes = encryptor.process(fileBytes);
      fileName = fileName.replaceFirst(result.files.first.extension ?? "", "") +
          ".aes";
    }

    // Upload file
    await FirebaseStorage.instance.ref('uploads/$fileName').putData(fileBytes);

    ScaffoldMessenger.of(context).clearSnackBars();
    return {
      "filePath": await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .getDownloadURL(),
      "fileName": fileName,
    };
  }
}
