// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuotationRecord> _$quotationRecordSerializer =
    new _$QuotationRecordSerializer();

class _$QuotationRecordSerializer
    implements StructuredSerializer<QuotationRecord> {
  @override
  final Iterable<Type> types = const [QuotationRecord, _$QuotationRecord];
  @override
  final String wireName = 'QuotationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuotationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.deliverInDays;
    if (value != null) {
      result
        ..add('deliver_in_days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attachments;
    if (value != null) {
      result
        ..add('attachments')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rfqRef;
    if (value != null) {
      result
        ..add('rfq_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.vendorRef;
    if (value != null) {
      result
        ..add('vendor_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  QuotationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuotationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deliver_in_days':
          result.deliverInDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'rfq_ref':
          result.rfqRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'vendor_ref':
          result.vendorRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$QuotationRecord extends QuotationRecord {
  @override
  final int? deliverInDays;
  @override
  final String? description;
  @override
  final BuiltList<String>? attachments;
  @override
  final DocumentReference<Object?>? rfqRef;
  @override
  final DocumentReference<Object?>? vendorRef;
  @override
  final DateTime? timestamp;
  @override
  final bool? accepted;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuotationRecord([void Function(QuotationRecordBuilder)? updates]) =>
      (new QuotationRecordBuilder()..update(updates))._build();

  _$QuotationRecord._(
      {this.deliverInDays,
      this.description,
      this.attachments,
      this.rfqRef,
      this.vendorRef,
      this.timestamp,
      this.accepted,
      this.ffRef})
      : super._();

  @override
  QuotationRecord rebuild(void Function(QuotationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotationRecordBuilder toBuilder() =>
      new QuotationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuotationRecord &&
        deliverInDays == other.deliverInDays &&
        description == other.description &&
        attachments == other.attachments &&
        rfqRef == other.rfqRef &&
        vendorRef == other.vendorRef &&
        timestamp == other.timestamp &&
        accepted == other.accepted &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, deliverInDays.hashCode),
                                description.hashCode),
                            attachments.hashCode),
                        rfqRef.hashCode),
                    vendorRef.hashCode),
                timestamp.hashCode),
            accepted.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuotationRecord')
          ..add('deliverInDays', deliverInDays)
          ..add('description', description)
          ..add('attachments', attachments)
          ..add('rfqRef', rfqRef)
          ..add('vendorRef', vendorRef)
          ..add('timestamp', timestamp)
          ..add('accepted', accepted)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuotationRecordBuilder
    implements Builder<QuotationRecord, QuotationRecordBuilder> {
  _$QuotationRecord? _$v;

  int? _deliverInDays;
  int? get deliverInDays => _$this._deliverInDays;
  set deliverInDays(int? deliverInDays) =>
      _$this._deliverInDays = deliverInDays;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _attachments;
  ListBuilder<String> get attachments =>
      _$this._attachments ??= new ListBuilder<String>();
  set attachments(ListBuilder<String>? attachments) =>
      _$this._attachments = attachments;

  DocumentReference<Object?>? _rfqRef;
  DocumentReference<Object?>? get rfqRef => _$this._rfqRef;
  set rfqRef(DocumentReference<Object?>? rfqRef) => _$this._rfqRef = rfqRef;

  DocumentReference<Object?>? _vendorRef;
  DocumentReference<Object?>? get vendorRef => _$this._vendorRef;
  set vendorRef(DocumentReference<Object?>? vendorRef) =>
      _$this._vendorRef = vendorRef;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuotationRecordBuilder() {
    QuotationRecord._initializeBuilder(this);
  }

  QuotationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliverInDays = $v.deliverInDays;
      _description = $v.description;
      _attachments = $v.attachments?.toBuilder();
      _rfqRef = $v.rfqRef;
      _vendorRef = $v.vendorRef;
      _timestamp = $v.timestamp;
      _accepted = $v.accepted;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuotationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuotationRecord;
  }

  @override
  void update(void Function(QuotationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuotationRecord build() => _build();

  _$QuotationRecord _build() {
    _$QuotationRecord _$result;
    try {
      _$result = _$v ??
          new _$QuotationRecord._(
              deliverInDays: deliverInDays,
              description: description,
              attachments: _attachments?.build(),
              rfqRef: rfqRef,
              vendorRef: vendorRef,
              timestamp: timestamp,
              accepted: accepted,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuotationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
