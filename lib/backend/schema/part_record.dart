import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'part_record.g.dart';

abstract class PartRecord implements Built<PartRecord, PartRecordBuilder> {
  static Serializer<PartRecord> get serializer => _$partRecordSerializer;

  @BuiltValueField(wireName: 'part_name')
  String? get partName;

  @BuiltValueField(wireName: 'part_type')
  String? get partType;

  BuiltList<String>? get attachments;

  String? get description;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'requirement_type')
  String? get requirementType;

  bool? get encryption;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'part_number')
  int? get partNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PartRecordBuilder builder) => builder
    ..partName = ''
    ..partType = ''
    ..attachments = ListBuilder()
    ..description = ''
    ..requirementType = ''
    ..encryption = false
    ..partNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('part');

  static Stream<PartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PartRecord._();
  factory PartRecord([void Function(PartRecordBuilder) updates]) = _$PartRecord;

  static PartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPartRecordData({
  String? partName,
  String? partType,
  String? description,
  DocumentReference? userRef,
  String? requirementType,
  bool? encryption,
  DateTime? dateCreated,
  int? partNumber,
}) {
  final firestoreData = serializers.toFirestore(
    PartRecord.serializer,
    PartRecord(
      (p) => p
        ..partName = partName
        ..partType = partType
        ..attachments = null
        ..description = description
        ..userRef = userRef
        ..requirementType = requirementType
        ..encryption = encryption
        ..dateCreated = dateCreated
        ..partNumber = partNumber,
    ),
  );

  return firestoreData;
}
