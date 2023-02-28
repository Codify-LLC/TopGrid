import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_users_local_struct.g.dart';

abstract class CompanyUsersLocalStruct
    implements Built<CompanyUsersLocalStruct, CompanyUsersLocalStructBuilder> {
  static Serializer<CompanyUsersLocalStruct> get serializer =>
      _$companyUsersLocalStructSerializer;

  String? get email;

  String? get name;

  @BuiltValueField(wireName: 'mobile_no')
  String? get mobileNo;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CompanyUsersLocalStructBuilder builder) =>
      builder
        ..email = ''
        ..name = ''
        ..mobileNo = ''
        ..firestoreUtilData = FirestoreUtilData();

  CompanyUsersLocalStruct._();
  factory CompanyUsersLocalStruct(
          [void Function(CompanyUsersLocalStructBuilder) updates]) =
      _$CompanyUsersLocalStruct;
}

CompanyUsersLocalStruct createCompanyUsersLocalStruct({
  String? email,
  String? name,
  String? mobileNo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyUsersLocalStruct(
      (c) => c
        ..email = email
        ..name = name
        ..mobileNo = mobileNo
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CompanyUsersLocalStruct? updateCompanyUsersLocalStruct(
  CompanyUsersLocalStruct? companyUsersLocal, {
  bool clearUnsetFields = true,
}) =>
    companyUsersLocal != null
        ? (companyUsersLocal.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCompanyUsersLocalStructData(
  Map<String, dynamic> firestoreData,
  CompanyUsersLocalStruct? companyUsersLocal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyUsersLocal == null) {
    return;
  }
  if (companyUsersLocal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && companyUsersLocal.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyUsersLocalData =
      getCompanyUsersLocalFirestoreData(companyUsersLocal, forFieldValue);
  final nestedData =
      companyUsersLocalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = companyUsersLocal.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCompanyUsersLocalFirestoreData(
  CompanyUsersLocalStruct? companyUsersLocal, [
  bool forFieldValue = false,
]) {
  if (companyUsersLocal == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      CompanyUsersLocalStruct.serializer, companyUsersLocal);

  // Add any Firestore field values
  companyUsersLocal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyUsersLocalListFirestoreData(
  List<CompanyUsersLocalStruct>? companyUsersLocals,
) =>
    companyUsersLocals
        ?.map((c) => getCompanyUsersLocalFirestoreData(c, true))
        .toList() ??
    [];
