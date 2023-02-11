import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_record.g.dart';

abstract class CompanyRecord
    implements Built<CompanyRecord, CompanyRecordBuilder> {
  static Serializer<CompanyRecord> get serializer => _$companyRecordSerializer;

  @BuiltValueField(wireName: 'company_name')
  String? get companyName;

  @BuiltValueField(wireName: 'organization_number')
  String? get organizationNumber;

  @BuiltValueField(wireName: 'legal_name')
  String? get legalName;

  @BuiltValueField(wireName: 'gst_number')
  String? get gstNumber;

  String? get address;

  String? get city;

  String? get pincode;

  @BuiltValueField(wireName: 'state_name')
  String? get stateName;

  BuiltList<DocumentReference>? get users;

  bool? get encryption;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyRecordBuilder builder) => builder
    ..companyName = ''
    ..organizationNumber = ''
    ..legalName = ''
    ..gstNumber = ''
    ..address = ''
    ..city = ''
    ..pincode = ''
    ..stateName = ''
    ..users = ListBuilder()
    ..encryption = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyRecord._();
  factory CompanyRecord([void Function(CompanyRecordBuilder) updates]) =
      _$CompanyRecord;

  static CompanyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyRecordData({
  String? companyName,
  String? organizationNumber,
  String? legalName,
  String? gstNumber,
  String? address,
  String? city,
  String? pincode,
  String? stateName,
  bool? encryption,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyRecord.serializer,
    CompanyRecord(
      (c) => c
        ..companyName = companyName
        ..organizationNumber = organizationNumber
        ..legalName = legalName
        ..gstNumber = gstNumber
        ..address = address
        ..city = city
        ..pincode = pincode
        ..stateName = stateName
        ..users = null
        ..encryption = encryption,
    ),
  );

  return firestoreData;
}
