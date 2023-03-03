import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'messages_record.g.dart';

abstract class MessagesRecord
    implements Built<MessagesRecord, MessagesRecordBuilder> {
  static Serializer<MessagesRecord> get serializer =>
      _$messagesRecordSerializer;

  String? get message;

  BuiltList<String>? get attachments;

  DateTime? get timestamp;

  @BuiltValueField(wireName: 'rfq_ref')
  DocumentReference? get rfqRef;

  @BuiltValueField(wireName: 'sender_ref')
  DocumentReference? get senderRef;

  bool? get quotation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MessagesRecordBuilder builder) => builder
    ..message = ''
    ..attachments = ListBuilder()
    ..quotation = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MessagesRecord._();
  factory MessagesRecord([void Function(MessagesRecordBuilder) updates]) =
      _$MessagesRecord;

  static MessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMessagesRecordData({
  String? message,
  DateTime? timestamp,
  DocumentReference? rfqRef,
  DocumentReference? senderRef,
  bool? quotation,
}) {
  final firestoreData = serializers.toFirestore(
    MessagesRecord.serializer,
    MessagesRecord(
      (m) => m
        ..message = message
        ..attachments = null
        ..timestamp = timestamp
        ..rfqRef = rfqRef
        ..senderRef = senderRef
        ..quotation = quotation,
    ),
  );

  return firestoreData;
}
