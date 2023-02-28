// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_users_local_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyUsersLocalStruct> _$companyUsersLocalStructSerializer =
    new _$CompanyUsersLocalStructSerializer();

class _$CompanyUsersLocalStructSerializer
    implements StructuredSerializer<CompanyUsersLocalStruct> {
  @override
  final Iterable<Type> types = const [
    CompanyUsersLocalStruct,
    _$CompanyUsersLocalStruct
  ];
  @override
  final String wireName = 'CompanyUsersLocalStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyUsersLocalStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNo;
    if (value != null) {
      result
        ..add('mobile_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CompanyUsersLocalStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyUsersLocalStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile_no':
          result.mobileNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CompanyUsersLocalStruct extends CompanyUsersLocalStruct {
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? mobileNo;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CompanyUsersLocalStruct(
          [void Function(CompanyUsersLocalStructBuilder)? updates]) =>
      (new CompanyUsersLocalStructBuilder()..update(updates))._build();

  _$CompanyUsersLocalStruct._(
      {this.email, this.name, this.mobileNo, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CompanyUsersLocalStruct', 'firestoreUtilData');
  }

  @override
  CompanyUsersLocalStruct rebuild(
          void Function(CompanyUsersLocalStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyUsersLocalStructBuilder toBuilder() =>
      new CompanyUsersLocalStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyUsersLocalStruct &&
        email == other.email &&
        name == other.name &&
        mobileNo == other.mobileNo &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), name.hashCode), mobileNo.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyUsersLocalStruct')
          ..add('email', email)
          ..add('name', name)
          ..add('mobileNo', mobileNo)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CompanyUsersLocalStructBuilder
    implements
        Builder<CompanyUsersLocalStruct, CompanyUsersLocalStructBuilder> {
  _$CompanyUsersLocalStruct? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mobileNo;
  String? get mobileNo => _$this._mobileNo;
  set mobileNo(String? mobileNo) => _$this._mobileNo = mobileNo;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CompanyUsersLocalStructBuilder() {
    CompanyUsersLocalStruct._initializeBuilder(this);
  }

  CompanyUsersLocalStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _mobileNo = $v.mobileNo;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyUsersLocalStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyUsersLocalStruct;
  }

  @override
  void update(void Function(CompanyUsersLocalStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyUsersLocalStruct build() => _build();

  _$CompanyUsersLocalStruct _build() {
    final _$result = _$v ??
        new _$CompanyUsersLocalStruct._(
            email: email,
            name: name,
            mobileNo: mobileNo,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'CompanyUsersLocalStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
