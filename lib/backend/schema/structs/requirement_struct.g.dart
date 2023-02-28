// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequirementStruct> _$requirementStructSerializer =
    new _$RequirementStructSerializer();

class _$RequirementStructSerializer
    implements StructuredSerializer<RequirementStruct> {
  @override
  final Iterable<Type> types = const [RequirementStruct, _$RequirementStruct];
  @override
  final String wireName = 'RequirementStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, RequirementStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.vendors;
    if (value != null) {
      result
        ..add('vendors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.requirementType;
    if (value != null) {
      result
        ..add('requirement_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.part;
    if (value != null) {
      result
        ..add('part')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RequirementStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequirementStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vendors':
          result.vendors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'requirement_type':
          result.requirementType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'part':
          result.part = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$RequirementStruct extends RequirementStruct {
  @override
  final BuiltList<DocumentReference<Object?>>? vendors;
  @override
  final int? quantity;
  @override
  final String? requirementType;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? part;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RequirementStruct(
          [void Function(RequirementStructBuilder)? updates]) =>
      (new RequirementStructBuilder()..update(updates))._build();

  _$RequirementStruct._(
      {this.vendors,
      this.quantity,
      this.requirementType,
      this.description,
      this.part,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RequirementStruct', 'firestoreUtilData');
  }

  @override
  RequirementStruct rebuild(void Function(RequirementStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequirementStructBuilder toBuilder() =>
      new RequirementStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequirementStruct &&
        vendors == other.vendors &&
        quantity == other.quantity &&
        requirementType == other.requirementType &&
        description == other.description &&
        part == other.part &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, vendors.hashCode), quantity.hashCode),
                    requirementType.hashCode),
                description.hashCode),
            part.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequirementStruct')
          ..add('vendors', vendors)
          ..add('quantity', quantity)
          ..add('requirementType', requirementType)
          ..add('description', description)
          ..add('part', part)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RequirementStructBuilder
    implements Builder<RequirementStruct, RequirementStructBuilder> {
  _$RequirementStruct? _$v;

  ListBuilder<DocumentReference<Object?>>? _vendors;
  ListBuilder<DocumentReference<Object?>> get vendors =>
      _$this._vendors ??= new ListBuilder<DocumentReference<Object?>>();
  set vendors(ListBuilder<DocumentReference<Object?>>? vendors) =>
      _$this._vendors = vendors;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _requirementType;
  String? get requirementType => _$this._requirementType;
  set requirementType(String? requirementType) =>
      _$this._requirementType = requirementType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _part;
  DocumentReference<Object?>? get part => _$this._part;
  set part(DocumentReference<Object?>? part) => _$this._part = part;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RequirementStructBuilder() {
    RequirementStruct._initializeBuilder(this);
  }

  RequirementStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vendors = $v.vendors?.toBuilder();
      _quantity = $v.quantity;
      _requirementType = $v.requirementType;
      _description = $v.description;
      _part = $v.part;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequirementStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequirementStruct;
  }

  @override
  void update(void Function(RequirementStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequirementStruct build() => _build();

  _$RequirementStruct _build() {
    _$RequirementStruct _$result;
    try {
      _$result = _$v ??
          new _$RequirementStruct._(
              vendors: _vendors?.build(),
              quantity: quantity,
              requirementType: requirementType,
              description: description,
              part: part,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'RequirementStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vendors';
        _vendors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequirementStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
