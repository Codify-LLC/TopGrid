import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'part_struct.g.dart';

abstract class PartStruct implements Built<PartStruct, PartStructBuilder> {
  static Serializer<PartStruct> get serializer => _$partStructSerializer;

  @BuiltValueField(wireName: 'part_ref')
  DocumentReference? get partRef;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PartStructBuilder builder) =>
      builder..firestoreUtilData = FirestoreUtilData();

  PartStruct._();
  factory PartStruct([void Function(PartStructBuilder) updates]) = _$PartStruct;
}

PartStruct createPartStruct({
  DocumentReference? partRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PartStruct(
      (p) => p
        ..partRef = partRef
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PartStruct? updatePartStruct(
  PartStruct? part, {
  bool clearUnsetFields = true,
}) =>
    part != null
        ? (part.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPartStructData(
  Map<String, dynamic> firestoreData,
  PartStruct? part,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (part == null) {
    return;
  }
  if (part.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && part.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final partData = getPartFirestoreData(part, forFieldValue);
  final nestedData = partData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = part.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPartFirestoreData(
  PartStruct? part, [
  bool forFieldValue = false,
]) {
  if (part == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PartStruct.serializer, part);

  // Add any Firestore field values
  part.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPartListFirestoreData(
  List<PartStruct>? parts,
) =>
    parts?.map((p) => getPartFirestoreData(p, true)).toList() ?? [];
