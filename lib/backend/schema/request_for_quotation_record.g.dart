// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_for_quotation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestForQuotationRecord> _$requestForQuotationRecordSerializer =
    new _$RequestForQuotationRecordSerializer();

class _$RequestForQuotationRecordSerializer
    implements StructuredSerializer<RequestForQuotationRecord> {
  @override
  final Iterable<Type> types = const [
    RequestForQuotationRecord,
    _$RequestForQuotationRecord
  ];
  @override
  final String wireName = 'RequestForQuotationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RequestForQuotationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rfqName;
    if (value != null) {
      result
        ..add('rfq_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.partsDescription;
    if (value != null) {
      result
        ..add('parts_description')
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
    value = object.rfqDescription;
    if (value != null) {
      result
        ..add('rfq_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rfqStatus;
    if (value != null) {
      result
        ..add('rfq_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerCompanyRef;
    if (value != null) {
      result
        ..add('customer_company_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.partList;
    if (value != null) {
      result
        ..add('part_list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RequirementStruct)])));
    }
    value = object.vendors;
    if (value != null) {
      result
        ..add('vendors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  RequestForQuotationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestForQuotationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rfq_name':
          result.rfqName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parts_description':
          result.partsDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'rfq_description':
          result.rfqDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rfq_status':
          result.rfqStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_company_ref':
          result.customerCompanyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'part_list':
          result.partList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RequirementStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'vendors':
          result.vendors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$RequestForQuotationRecord extends RequestForQuotationRecord {
  @override
  final String? rfqName;
  @override
  final int? quantity;
  @override
  final String? partsDescription;
  @override
  final BuiltList<String>? attachments;
  @override
  final String? rfqDescription;
  @override
  final String? rfqStatus;
  @override
  final DocumentReference<Object?>? customerCompanyRef;
  @override
  final BuiltList<RequirementStruct>? partList;
  @override
  final BuiltList<String>? vendors;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RequestForQuotationRecord(
          [void Function(RequestForQuotationRecordBuilder)? updates]) =>
      (new RequestForQuotationRecordBuilder()..update(updates))._build();

  _$RequestForQuotationRecord._(
      {this.rfqName,
      this.quantity,
      this.partsDescription,
      this.attachments,
      this.rfqDescription,
      this.rfqStatus,
      this.customerCompanyRef,
      this.partList,
      this.vendors,
      this.ffRef})
      : super._();

  @override
  RequestForQuotationRecord rebuild(
          void Function(RequestForQuotationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestForQuotationRecordBuilder toBuilder() =>
      new RequestForQuotationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestForQuotationRecord &&
        rfqName == other.rfqName &&
        quantity == other.quantity &&
        partsDescription == other.partsDescription &&
        attachments == other.attachments &&
        rfqDescription == other.rfqDescription &&
        rfqStatus == other.rfqStatus &&
        customerCompanyRef == other.customerCompanyRef &&
        partList == other.partList &&
        vendors == other.vendors &&
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
                                    $jc($jc(0, rfqName.hashCode),
                                        quantity.hashCode),
                                    partsDescription.hashCode),
                                attachments.hashCode),
                            rfqDescription.hashCode),
                        rfqStatus.hashCode),
                    customerCompanyRef.hashCode),
                partList.hashCode),
            vendors.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestForQuotationRecord')
          ..add('rfqName', rfqName)
          ..add('quantity', quantity)
          ..add('partsDescription', partsDescription)
          ..add('attachments', attachments)
          ..add('rfqDescription', rfqDescription)
          ..add('rfqStatus', rfqStatus)
          ..add('customerCompanyRef', customerCompanyRef)
          ..add('partList', partList)
          ..add('vendors', vendors)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RequestForQuotationRecordBuilder
    implements
        Builder<RequestForQuotationRecord, RequestForQuotationRecordBuilder> {
  _$RequestForQuotationRecord? _$v;

  String? _rfqName;
  String? get rfqName => _$this._rfqName;
  set rfqName(String? rfqName) => _$this._rfqName = rfqName;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _partsDescription;
  String? get partsDescription => _$this._partsDescription;
  set partsDescription(String? partsDescription) =>
      _$this._partsDescription = partsDescription;

  ListBuilder<String>? _attachments;
  ListBuilder<String> get attachments =>
      _$this._attachments ??= new ListBuilder<String>();
  set attachments(ListBuilder<String>? attachments) =>
      _$this._attachments = attachments;

  String? _rfqDescription;
  String? get rfqDescription => _$this._rfqDescription;
  set rfqDescription(String? rfqDescription) =>
      _$this._rfqDescription = rfqDescription;

  String? _rfqStatus;
  String? get rfqStatus => _$this._rfqStatus;
  set rfqStatus(String? rfqStatus) => _$this._rfqStatus = rfqStatus;

  DocumentReference<Object?>? _customerCompanyRef;
  DocumentReference<Object?>? get customerCompanyRef =>
      _$this._customerCompanyRef;
  set customerCompanyRef(DocumentReference<Object?>? customerCompanyRef) =>
      _$this._customerCompanyRef = customerCompanyRef;

  ListBuilder<RequirementStruct>? _partList;
  ListBuilder<RequirementStruct> get partList =>
      _$this._partList ??= new ListBuilder<RequirementStruct>();
  set partList(ListBuilder<RequirementStruct>? partList) =>
      _$this._partList = partList;

  ListBuilder<String>? _vendors;
  ListBuilder<String> get vendors =>
      _$this._vendors ??= new ListBuilder<String>();
  set vendors(ListBuilder<String>? vendors) => _$this._vendors = vendors;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RequestForQuotationRecordBuilder() {
    RequestForQuotationRecord._initializeBuilder(this);
  }

  RequestForQuotationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rfqName = $v.rfqName;
      _quantity = $v.quantity;
      _partsDescription = $v.partsDescription;
      _attachments = $v.attachments?.toBuilder();
      _rfqDescription = $v.rfqDescription;
      _rfqStatus = $v.rfqStatus;
      _customerCompanyRef = $v.customerCompanyRef;
      _partList = $v.partList?.toBuilder();
      _vendors = $v.vendors?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestForQuotationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestForQuotationRecord;
  }

  @override
  void update(void Function(RequestForQuotationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestForQuotationRecord build() => _build();

  _$RequestForQuotationRecord _build() {
    _$RequestForQuotationRecord _$result;
    try {
      _$result = _$v ??
          new _$RequestForQuotationRecord._(
              rfqName: rfqName,
              quantity: quantity,
              partsDescription: partsDescription,
              attachments: _attachments?.build(),
              rfqDescription: rfqDescription,
              rfqStatus: rfqStatus,
              customerCompanyRef: customerCompanyRef,
              partList: _partList?.build(),
              vendors: _vendors?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'partList';
        _partList?.build();
        _$failedField = 'vendors';
        _vendors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestForQuotationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
