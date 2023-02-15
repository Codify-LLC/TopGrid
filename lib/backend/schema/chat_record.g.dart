// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatRecord> _$chatRecordSerializer = new _$ChatRecordSerializer();

class _$ChatRecordSerializer implements StructuredSerializer<ChatRecord> {
  @override
  final Iterable<Type> types = const [ChatRecord, _$ChatRecord];
  @override
  final String wireName = 'ChatRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rfqRef;
    if (value != null) {
      result
        ..add('rfq_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  ChatRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rfq_ref':
          result.rfqRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$ChatRecord extends ChatRecord {
  @override
  final DocumentReference<Object?>? rfqRef;
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatRecord([void Function(ChatRecordBuilder)? updates]) =>
      (new ChatRecordBuilder()..update(updates))._build();

  _$ChatRecord._({this.rfqRef, this.users, this.ffRef}) : super._();

  @override
  ChatRecord rebuild(void Function(ChatRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRecordBuilder toBuilder() => new ChatRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRecord &&
        rfqRef == other.rfqRef &&
        users == other.users &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, rfqRef.hashCode), users.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatRecord')
          ..add('rfqRef', rfqRef)
          ..add('users', users)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatRecordBuilder implements Builder<ChatRecord, ChatRecordBuilder> {
  _$ChatRecord? _$v;

  DocumentReference<Object?>? _rfqRef;
  DocumentReference<Object?>? get rfqRef => _$this._rfqRef;
  set rfqRef(DocumentReference<Object?>? rfqRef) => _$this._rfqRef = rfqRef;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatRecordBuilder() {
    ChatRecord._initializeBuilder(this);
  }

  ChatRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rfqRef = $v.rfqRef;
      _users = $v.users?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRecord;
  }

  @override
  void update(void Function(ChatRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatRecord build() => _build();

  _$ChatRecord _build() {
    _$ChatRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatRecord._(
              rfqRef: rfqRef, users: _users?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
