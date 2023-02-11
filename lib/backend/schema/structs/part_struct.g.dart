// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PartStruct> _$partStructSerializer = new _$PartStructSerializer();

class _$PartStructSerializer implements StructuredSerializer<PartStruct> {
  @override
  final Iterable<Type> types = const [PartStruct, _$PartStruct];
  @override
  final String wireName = 'PartStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PartStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.partRef;
    if (value != null) {
      result
        ..add('part_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PartStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PartStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'part_ref':
          result.partRef = serializers.deserialize(value,
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

class _$PartStruct extends PartStruct {
  @override
  final DocumentReference<Object?>? partRef;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PartStruct([void Function(PartStructBuilder)? updates]) =>
      (new PartStructBuilder()..update(updates))._build();

  _$PartStruct._({this.partRef, required this.firestoreUtilData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PartStruct', 'firestoreUtilData');
  }

  @override
  PartStruct rebuild(void Function(PartStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartStructBuilder toBuilder() => new PartStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartStruct &&
        partRef == other.partRef &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, partRef.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PartStruct')
          ..add('partRef', partRef)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PartStructBuilder implements Builder<PartStruct, PartStructBuilder> {
  _$PartStruct? _$v;

  DocumentReference<Object?>? _partRef;
  DocumentReference<Object?>? get partRef => _$this._partRef;
  set partRef(DocumentReference<Object?>? partRef) => _$this._partRef = partRef;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PartStructBuilder() {
    PartStruct._initializeBuilder(this);
  }

  PartStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _partRef = $v.partRef;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PartStruct;
  }

  @override
  void update(void Function(PartStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartStruct build() => _build();

  _$PartStruct _build() {
    final _$result = _$v ??
        new _$PartStruct._(
            partRef: partRef,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PartStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
