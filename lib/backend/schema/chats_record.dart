import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chats_record.g.dart';

abstract class ChatsRecord implements Built<ChatsRecord, ChatsRecordBuilder> {
  static Serializer<ChatsRecord> get serializer => _$chatsRecordSerializer;

  @BuiltValueField(wireName: 'vendor_ref')
  DocumentReference? get vendorRef;

  @BuiltValueField(wireName: 'customer_ref')
  DocumentReference? get customerRef;

  @BuiltValueField(wireName: 'rfq_ref')
  DocumentReference? get rfqRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatsRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatsRecord._();
  factory ChatsRecord([void Function(ChatsRecordBuilder) updates]) =
      _$ChatsRecord;

  static ChatsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? vendorRef,
  DocumentReference? customerRef,
  DocumentReference? rfqRef,
}) {
  final firestoreData = serializers.toFirestore(
    ChatsRecord.serializer,
    ChatsRecord(
      (c) => c
        ..vendorRef = vendorRef
        ..customerRef = customerRef
        ..rfqRef = rfqRef,
    ),
  );

  return firestoreData;
}
