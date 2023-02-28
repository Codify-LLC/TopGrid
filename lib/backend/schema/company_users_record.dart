import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_users_record.g.dart';

abstract class CompanyUsersRecord
    implements Built<CompanyUsersRecord, CompanyUsersRecordBuilder> {
  static Serializer<CompanyUsersRecord> get serializer =>
      _$companyUsersRecordSerializer;

  String? get email;

  String? get name;

  @BuiltValueField(wireName: 'company_ref')
  DocumentReference? get companyRef;

  @BuiltValueField(wireName: 'mobile_number')
  int? get mobileNumber;

  String? get role;

  @BuiltValueField(wireName: 'user_type')
  String? get userType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyUsersRecordBuilder builder) => builder
    ..email = ''
    ..name = ''
    ..mobileNumber = 0
    ..role = ''
    ..userType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company_users');

  static Stream<CompanyUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyUsersRecord._();
  factory CompanyUsersRecord(
          [void Function(CompanyUsersRecordBuilder) updates]) =
      _$CompanyUsersRecord;

  static CompanyUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyUsersRecordData({
  String? email,
  String? name,
  DocumentReference? companyRef,
  int? mobileNumber,
  String? role,
  String? userType,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyUsersRecord.serializer,
    CompanyUsersRecord(
      (c) => c
        ..email = email
        ..name = name
        ..companyRef = companyRef
        ..mobileNumber = mobileNumber
        ..role = role
        ..userType = userType,
    ),
  );

  return firestoreData;
}
