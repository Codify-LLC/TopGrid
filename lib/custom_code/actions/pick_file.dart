// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

Future<dynamic> pickFile(BuildContext context) async {
  // Add your function code here!
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text('Uploading File'),
    duration: const Duration(seconds: 60),
  ));
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
    Uint8List fileBytes = result.files.first.bytes!;
    String fileName = result.files.first.name;

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
