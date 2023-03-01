// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/requirement_struct.dart';

Future<List<RequirementStruct>> combineArrays(
  List<RequirementStruct> existing,
  int quantity,
  String description,
  String requirementType,
  DocumentReference part,
) async {
  // Add your function code here!
  existing.add(createRequirementStruct(
      quantity: quantity,
      description: description,
      requirementType: requirementType,
      part: part));
  return existing;
}
