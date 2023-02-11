// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PartRecord> _$partRecordSerializer = new _$PartRecordSerializer();

class _$PartRecordSerializer implements StructuredSerializer<PartRecord> {
  @override
  final Iterable<Type> types = const [PartRecord, _$PartRecord];
  @override
  final String wireName = 'PartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.partName;
    if (value != null) {
      result
        ..add('part_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partNumber;
    if (value != null) {
      result
        ..add('part_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partType;
    if (value != null) {
      result
        ..add('part_type')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.requirementType;
    if (value != null) {
      result
        ..add('requirement_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.encryption;
    if (value != null) {
      result
        ..add('encryption')
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
  PartRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'part_name':
          result.partName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'part_number':
          result.partNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'part_type':
          result.partType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'requirement_type':
          result.requirementType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'encryption':
          result.encryption = serializers.deserialize(value,
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

class _$PartRecord extends PartRecord {
  @override
  final String? partName;
  @override
  final String? partNumber;
  @override
  final String? partType;
  @override
  final BuiltList<String>? attachments;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? requirementType;
  @override
  final bool? encryption;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PartRecord([void Function(PartRecordBuilder)? updates]) =>
      (new PartRecordBuilder()..update(updates))._build();

  _$PartRecord._(
      {this.partName,
      this.partNumber,
      this.partType,
      this.attachments,
      this.description,
      this.userRef,
      this.requirementType,
      this.encryption,
      this.ffRef})
      : super._();

  @override
  PartRecord rebuild(void Function(PartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartRecordBuilder toBuilder() => new PartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartRecord &&
        partName == other.partName &&
        partNumber == other.partNumber &&
        partType == other.partType &&
        attachments == other.attachments &&
        description == other.description &&
        userRef == other.userRef &&
        requirementType == other.requirementType &&
        encryption == other.encryption &&
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
                            $jc(
                                $jc($jc(0, partName.hashCode),
                                    partNumber.hashCode),
                                partType.hashCode),
                            attachments.hashCode),
                        description.hashCode),
                    userRef.hashCode),
                requirementType.hashCode),
            encryption.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PartRecord')
          ..add('partName', partName)
          ..add('partNumber', partNumber)
          ..add('partType', partType)
          ..add('attachments', attachments)
          ..add('description', description)
          ..add('userRef', userRef)
          ..add('requirementType', requirementType)
          ..add('encryption', encryption)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PartRecordBuilder implements Builder<PartRecord, PartRecordBuilder> {
  _$PartRecord? _$v;

  String? _partName;
  String? get partName => _$this._partName;
  set partName(String? partName) => _$this._partName = partName;

  String? _partNumber;
  String? get partNumber => _$this._partNumber;
  set partNumber(String? partNumber) => _$this._partNumber = partNumber;

  String? _partType;
  String? get partType => _$this._partType;
  set partType(String? partType) => _$this._partType = partType;

  ListBuilder<String>? _attachments;
  ListBuilder<String> get attachments =>
      _$this._attachments ??= new ListBuilder<String>();
  set attachments(ListBuilder<String>? attachments) =>
      _$this._attachments = attachments;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _requirementType;
  String? get requirementType => _$this._requirementType;
  set requirementType(String? requirementType) =>
      _$this._requirementType = requirementType;

  bool? _encryption;
  bool? get encryption => _$this._encryption;
  set encryption(bool? encryption) => _$this._encryption = encryption;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PartRecordBuilder() {
    PartRecord._initializeBuilder(this);
  }

  PartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _partName = $v.partName;
      _partNumber = $v.partNumber;
      _partType = $v.partType;
      _attachments = $v.attachments?.toBuilder();
      _description = $v.description;
      _userRef = $v.userRef;
      _requirementType = $v.requirementType;
      _encryption = $v.encryption;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PartRecord;
  }

  @override
  void update(void Function(PartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartRecord build() => _build();

  _$PartRecord _build() {
    _$PartRecord _$result;
    try {
      _$result = _$v ??
          new _$PartRecord._(
              partName: partName,
              partNumber: partNumber,
              partType: partType,
              attachments: _attachments?.build(),
              description: description,
              userRef: userRef,
              requirementType: requirementType,
              encryption: encryption,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PartRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
