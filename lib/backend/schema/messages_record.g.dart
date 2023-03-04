// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessagesRecord> _$messagesRecordSerializer =
    new _$MessagesRecordSerializer();

class _$MessagesRecordSerializer
    implements StructuredSerializer<MessagesRecord> {
  @override
  final Iterable<Type> types = const [MessagesRecord, _$MessagesRecord];
  @override
  final String wireName = 'MessagesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MessagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
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
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rfqRef;
    if (value != null) {
      result
        ..add('rfq_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.quotation;
    if (value != null) {
      result
        ..add('quotation')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.senderRef;
    if (value != null) {
      result
        ..add('sender_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.chat;
    if (value != null) {
      result
        ..add('chat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  MessagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'rfq_ref':
          result.rfqRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'quotation':
          result.quotation = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sender_ref':
          result.senderRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'chat':
          result.chat = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$MessagesRecord extends MessagesRecord {
  @override
  final String? message;
  @override
  final BuiltList<String>? attachments;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? rfqRef;
  @override
  final bool? quotation;
  @override
  final DocumentReference<Object?>? senderRef;
  @override
  final DocumentReference<Object?>? chat;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MessagesRecord([void Function(MessagesRecordBuilder)? updates]) =>
      (new MessagesRecordBuilder()..update(updates))._build();

  _$MessagesRecord._(
      {this.message,
      this.attachments,
      this.timestamp,
      this.rfqRef,
      this.quotation,
      this.senderRef,
      this.chat,
      this.ffRef})
      : super._();

  @override
  MessagesRecord rebuild(void Function(MessagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagesRecordBuilder toBuilder() =>
      new MessagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagesRecord &&
        message == other.message &&
        attachments == other.attachments &&
        timestamp == other.timestamp &&
        rfqRef == other.rfqRef &&
        quotation == other.quotation &&
        senderRef == other.senderRef &&
        chat == other.chat &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, message.hashCode), attachments.hashCode),
                            timestamp.hashCode),
                        rfqRef.hashCode),
                    quotation.hashCode),
                senderRef.hashCode),
            chat.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessagesRecord')
          ..add('message', message)
          ..add('attachments', attachments)
          ..add('timestamp', timestamp)
          ..add('rfqRef', rfqRef)
          ..add('quotation', quotation)
          ..add('senderRef', senderRef)
          ..add('chat', chat)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MessagesRecordBuilder
    implements Builder<MessagesRecord, MessagesRecordBuilder> {
  _$MessagesRecord? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _attachments;
  ListBuilder<String> get attachments =>
      _$this._attachments ??= new ListBuilder<String>();
  set attachments(ListBuilder<String>? attachments) =>
      _$this._attachments = attachments;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _rfqRef;
  DocumentReference<Object?>? get rfqRef => _$this._rfqRef;
  set rfqRef(DocumentReference<Object?>? rfqRef) => _$this._rfqRef = rfqRef;

  bool? _quotation;
  bool? get quotation => _$this._quotation;
  set quotation(bool? quotation) => _$this._quotation = quotation;

  DocumentReference<Object?>? _senderRef;
  DocumentReference<Object?>? get senderRef => _$this._senderRef;
  set senderRef(DocumentReference<Object?>? senderRef) =>
      _$this._senderRef = senderRef;

  DocumentReference<Object?>? _chat;
  DocumentReference<Object?>? get chat => _$this._chat;
  set chat(DocumentReference<Object?>? chat) => _$this._chat = chat;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MessagesRecordBuilder() {
    MessagesRecord._initializeBuilder(this);
  }

  MessagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _attachments = $v.attachments?.toBuilder();
      _timestamp = $v.timestamp;
      _rfqRef = $v.rfqRef;
      _quotation = $v.quotation;
      _senderRef = $v.senderRef;
      _chat = $v.chat;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessagesRecord;
  }

  @override
  void update(void Function(MessagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessagesRecord build() => _build();

  _$MessagesRecord _build() {
    _$MessagesRecord _$result;
    try {
      _$result = _$v ??
          new _$MessagesRecord._(
              message: message,
              attachments: _attachments?.build(),
              timestamp: timestamp,
              rfqRef: rfqRef,
              quotation: quotation,
              senderRef: senderRef,
              chat: chat,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MessagesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
