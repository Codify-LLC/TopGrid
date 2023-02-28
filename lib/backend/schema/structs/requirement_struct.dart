import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'requirement_struct.g.dart';

abstract class RequirementStruct
    implements Built<RequirementStruct, RequirementStructBuilder> {
  static Serializer<RequirementStruct> get serializer =>
      _$requirementStructSerializer;

  BuiltList<DocumentReference>? get vendors;

  int? get quantity;

  @BuiltValueField(wireName: 'requirement_type')
  String? get requirementType;

  String? get description;

  DocumentReference? get part;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(RequirementStructBuilder builder) => builder
    ..vendors = ListBuilder()
    ..quantity = 0
    ..requirementType = ''
    ..description = ''
    ..firestoreUtilData = FirestoreUtilData();

  RequirementStruct._();
  factory RequirementStruct([void Function(RequirementStructBuilder) updates]) =
      _$RequirementStruct;
}

RequirementStruct createRequirementStruct({
  int? quantity,
  String? requirementType,
  String? description,
  DocumentReference? part,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RequirementStruct(
      (r) => r
        ..vendors = null
        ..quantity = quantity
        ..requirementType = requirementType
        ..description = description
        ..part = part
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

RequirementStruct? updateRequirementStruct(
  RequirementStruct? requirement, {
  bool clearUnsetFields = true,
}) =>
    requirement != null
        ? (requirement.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRequirementStructData(
  Map<String, dynamic> firestoreData,
  RequirementStruct? requirement,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (requirement == null) {
    return;
  }
  if (requirement.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && requirement.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final requirementData =
      getRequirementFirestoreData(requirement, forFieldValue);
  final nestedData =
      requirementData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = requirement.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRequirementFirestoreData(
  RequirementStruct? requirement, [
  bool forFieldValue = false,
]) {
  if (requirement == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(RequirementStruct.serializer, requirement);

  // Add any Firestore field values
  requirement.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRequirementListFirestoreData(
  List<RequirementStruct>? requirements,
) =>
    requirements?.map((r) => getRequirementFirestoreData(r, true)).toList() ??
    [];
