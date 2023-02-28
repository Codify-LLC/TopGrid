import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'request_for_quotation_record.g.dart';

abstract class RequestForQuotationRecord
    implements
        Built<RequestForQuotationRecord, RequestForQuotationRecordBuilder> {
  static Serializer<RequestForQuotationRecord> get serializer =>
      _$requestForQuotationRecordSerializer;

  @BuiltValueField(wireName: 'rfq_name')
  String? get rfqName;

  int? get quantity;

  @BuiltValueField(wireName: 'parts_description')
  String? get partsDescription;

  BuiltList<String>? get attachments;

  BuiltList<DocumentReference>? get vendors;

  @BuiltValueField(wireName: 'rfq_description')
  String? get rfqDescription;

  @BuiltValueField(wireName: 'rfq_status')
  String? get rfqStatus;

  @BuiltValueField(wireName: 'customer_company_ref')
  DocumentReference? get customerCompanyRef;

  @BuiltValueField(wireName: 'part_list')
  BuiltList<RequirementStruct>? get partList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RequestForQuotationRecordBuilder builder) =>
      builder
        ..rfqName = ''
        ..quantity = 0
        ..partsDescription = ''
        ..attachments = ListBuilder()
        ..vendors = ListBuilder()
        ..rfqDescription = ''
        ..rfqStatus = ''
        ..partList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request_for_quotation');

  static Stream<RequestForQuotationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RequestForQuotationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RequestForQuotationRecord._();
  factory RequestForQuotationRecord(
          [void Function(RequestForQuotationRecordBuilder) updates]) =
      _$RequestForQuotationRecord;

  static RequestForQuotationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRequestForQuotationRecordData({
  String? rfqName,
  int? quantity,
  String? partsDescription,
  String? rfqDescription,
  String? rfqStatus,
  DocumentReference? customerCompanyRef,
}) {
  final firestoreData = serializers.toFirestore(
    RequestForQuotationRecord.serializer,
    RequestForQuotationRecord(
      (r) => r
        ..rfqName = rfqName
        ..quantity = quantity
        ..partsDescription = partsDescription
        ..attachments = null
        ..vendors = null
        ..rfqDescription = rfqDescription
        ..rfqStatus = rfqStatus
        ..customerCompanyRef = customerCompanyRef
        ..partList = null,
    ),
  );

  return firestoreData;
}
