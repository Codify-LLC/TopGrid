import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @BuiltValueField(wireName: 'order_number')
  String? get orderNumber;

  @BuiltValueField(wireName: 'order_status')
  String? get orderStatus;

  BuiltList<String>? get attachments;

  @BuiltValueField(wireName: 'order_name')
  String? get orderName;

  @BuiltValueField(wireName: 'order_description')
  String? get orderDescription;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..orderNumber = ''
    ..orderStatus = ''
    ..attachments = ListBuilder()
    ..orderName = ''
    ..orderDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderNumber,
  String? orderStatus,
  String? orderName,
  String? orderDescription,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..orderNumber = orderNumber
        ..orderStatus = orderStatus
        ..attachments = null
        ..orderName = orderName
        ..orderDescription = orderDescription,
    ),
  );

  return firestoreData;
}
