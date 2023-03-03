// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyUsersRecord> _$companyUsersRecordSerializer =
    new _$CompanyUsersRecordSerializer();

class _$CompanyUsersRecordSerializer
    implements StructuredSerializer<CompanyUsersRecord> {
  @override
  final Iterable<Type> types = const [CompanyUsersRecord, _$CompanyUsersRecord];
  @override
  final String wireName = 'CompanyUsersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.companyRef;
    if (value != null) {
      result
        ..add('company_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobile_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('user_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDoc;
    if (value != null) {
      result
        ..add('user_doc')
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
  CompanyUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyUsersRecordBuilder();

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
        case 'company_ref':
          result.companyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'mobile_number':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_doc':
          result.userDoc = serializers.deserialize(value,
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

class _$CompanyUsersRecord extends CompanyUsersRecord {
  @override
  final String? email;
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? companyRef;
  @override
  final int? mobileNumber;
  @override
  final String? role;
  @override
  final String? userType;
  @override
  final DocumentReference<Object?>? userDoc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyUsersRecord(
          [void Function(CompanyUsersRecordBuilder)? updates]) =>
      (new CompanyUsersRecordBuilder()..update(updates))._build();

  _$CompanyUsersRecord._(
      {this.email,
      this.name,
      this.companyRef,
      this.mobileNumber,
      this.role,
      this.userType,
      this.userDoc,
      this.ffRef})
      : super._();

  @override
  CompanyUsersRecord rebuild(
          void Function(CompanyUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyUsersRecordBuilder toBuilder() =>
      new CompanyUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyUsersRecord &&
        email == other.email &&
        name == other.name &&
        companyRef == other.companyRef &&
        mobileNumber == other.mobileNumber &&
        role == other.role &&
        userType == other.userType &&
        userDoc == other.userDoc &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, email.hashCode), name.hashCode),
                            companyRef.hashCode),
                        mobileNumber.hashCode),
                    role.hashCode),
                userType.hashCode),
            userDoc.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyUsersRecord')
          ..add('email', email)
          ..add('name', name)
          ..add('companyRef', companyRef)
          ..add('mobileNumber', mobileNumber)
          ..add('role', role)
          ..add('userType', userType)
          ..add('userDoc', userDoc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyUsersRecordBuilder
    implements Builder<CompanyUsersRecord, CompanyUsersRecordBuilder> {
  _$CompanyUsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _companyRef;
  DocumentReference<Object?>? get companyRef => _$this._companyRef;
  set companyRef(DocumentReference<Object?>? companyRef) =>
      _$this._companyRef = companyRef;

  int? _mobileNumber;
  int? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(int? mobileNumber) => _$this._mobileNumber = mobileNumber;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  DocumentReference<Object?>? _userDoc;
  DocumentReference<Object?>? get userDoc => _$this._userDoc;
  set userDoc(DocumentReference<Object?>? userDoc) => _$this._userDoc = userDoc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyUsersRecordBuilder() {
    CompanyUsersRecord._initializeBuilder(this);
  }

  CompanyUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _companyRef = $v.companyRef;
      _mobileNumber = $v.mobileNumber;
      _role = $v.role;
      _userType = $v.userType;
      _userDoc = $v.userDoc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyUsersRecord;
  }

  @override
  void update(void Function(CompanyUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyUsersRecord build() => _build();

  _$CompanyUsersRecord _build() {
    final _$result = _$v ??
        new _$CompanyUsersRecord._(
            email: email,
            name: name,
            companyRef: companyRef,
            mobileNumber: mobileNumber,
            role: role,
            userType: userType,
            userDoc: userDoc,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
