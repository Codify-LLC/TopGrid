import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quotation_record.g.dart';

abstract class QuotationRecord
    implements Built<QuotationRecord, QuotationRecordBuilder> {
  static Serializer<QuotationRecord> get serializer =>
      _$quotationRecordSerializer;

  @BuiltValueField(wireName: 'deliver_in_days')
  int? get deliverInDays;

  String? get description;

  BuiltList<String>? get attachments;

  @BuiltValueField(wireName: 'rfq_ref')
  DocumentReference? get rfqRef;

  @BuiltValueField(wireName: 'vendor_ref')
  DocumentReference? get vendorRef;

  DateTime? get timestamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QuotationRecordBuilder builder) => builder
    ..deliverInDays = 0
    ..description = ''
    ..attachments = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quotation');

  static Stream<QuotationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuotationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuotationRecord._();
  factory QuotationRecord([void Function(QuotationRecordBuilder) updates]) =
      _$QuotationRecord;

  static QuotationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuotationRecordData({
  int? deliverInDays,
  String? description,
  DocumentReference? rfqRef,
  DocumentReference? vendorRef,
  DateTime? timestamp,
}) {
  final firestoreData = serializers.toFirestore(
    QuotationRecord.serializer,
    QuotationRecord(
      (q) => q
        ..deliverInDays = deliverInDays
        ..description = description
        ..attachments = null
        ..rfqRef = rfqRef
        ..vendorRef = vendorRef
        ..timestamp = timestamp,
    ),
  );

  return firestoreData;
}
