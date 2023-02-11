// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyRecord> _$companyRecordSerializer =
    new _$CompanyRecordSerializer();

class _$CompanyRecordSerializer implements StructuredSerializer<CompanyRecord> {
  @override
  final Iterable<Type> types = const [CompanyRecord, _$CompanyRecord];
  @override
  final String wireName = 'CompanyRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompanyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizationNumber;
    if (value != null) {
      result
        ..add('organization_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.legalName;
    if (value != null) {
      result
        ..add('legal_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gstNumber;
    if (value != null) {
      result
        ..add('gst_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateName;
    if (value != null) {
      result
        ..add('state_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CompanyRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organization_number':
          result.organizationNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'legal_name':
          result.legalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gst_number':
          result.gstNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state_name':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CompanyRecord extends CompanyRecord {
  @override
  final String? companyName;
  @override
  final String? organizationNumber;
  @override
  final String? legalName;
  @override
  final String? gstNumber;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? pincode;
  @override
  final String? stateName;
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final bool? encryption;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyRecord([void Function(CompanyRecordBuilder)? updates]) =>
      (new CompanyRecordBuilder()..update(updates))._build();

  _$CompanyRecord._(
      {this.companyName,
      this.organizationNumber,
      this.legalName,
      this.gstNumber,
      this.address,
      this.city,
      this.pincode,
      this.stateName,
      this.users,
      this.encryption,
      this.ffRef})
      : super._();

  @override
  CompanyRecord rebuild(void Function(CompanyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyRecordBuilder toBuilder() => new CompanyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyRecord &&
        companyName == other.companyName &&
        organizationNumber == other.organizationNumber &&
        legalName == other.legalName &&
        gstNumber == other.gstNumber &&
        address == other.address &&
        city == other.city &&
        pincode == other.pincode &&
        stateName == other.stateName &&
        users == other.users &&
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
                                $jc(
                                    $jc(
                                        $jc($jc(0, companyName.hashCode),
                                            organizationNumber.hashCode),
                                        legalName.hashCode),
                                    gstNumber.hashCode),
                                address.hashCode),
                            city.hashCode),
                        pincode.hashCode),
                    stateName.hashCode),
                users.hashCode),
            encryption.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyRecord')
          ..add('companyName', companyName)
          ..add('organizationNumber', organizationNumber)
          ..add('legalName', legalName)
          ..add('gstNumber', gstNumber)
          ..add('address', address)
          ..add('city', city)
          ..add('pincode', pincode)
          ..add('stateName', stateName)
          ..add('users', users)
          ..add('encryption', encryption)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyRecordBuilder
    implements Builder<CompanyRecord, CompanyRecordBuilder> {
  _$CompanyRecord? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _organizationNumber;
  String? get organizationNumber => _$this._organizationNumber;
  set organizationNumber(String? organizationNumber) =>
      _$this._organizationNumber = organizationNumber;

  String? _legalName;
  String? get legalName => _$this._legalName;
  set legalName(String? legalName) => _$this._legalName = legalName;

  String? _gstNumber;
  String? get gstNumber => _$this._gstNumber;
  set gstNumber(String? gstNumber) => _$this._gstNumber = gstNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _pincode;
  String? get pincode => _$this._pincode;
  set pincode(String? pincode) => _$this._pincode = pincode;

  String? _stateName;
  String? get stateName => _$this._stateName;
  set stateName(String? stateName) => _$this._stateName = stateName;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  bool? _encryption;
  bool? get encryption => _$this._encryption;
  set encryption(bool? encryption) => _$this._encryption = encryption;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyRecordBuilder() {
    CompanyRecord._initializeBuilder(this);
  }

  CompanyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _organizationNumber = $v.organizationNumber;
      _legalName = $v.legalName;
      _gstNumber = $v.gstNumber;
      _address = $v.address;
      _city = $v.city;
      _pincode = $v.pincode;
      _stateName = $v.stateName;
      _users = $v.users?.toBuilder();
      _encryption = $v.encryption;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyRecord;
  }

  @override
  void update(void Function(CompanyRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyRecord build() => _build();

  _$CompanyRecord _build() {
    _$CompanyRecord _$result;
    try {
      _$result = _$v ??
          new _$CompanyRecord._(
              companyName: companyName,
              organizationNumber: organizationNumber,
              legalName: legalName,
              gstNumber: gstNumber,
              address: address,
              city: city,
              pincode: pincode,
              stateName: stateName,
              users: _users?.build(),
              encryption: encryption,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompanyRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
