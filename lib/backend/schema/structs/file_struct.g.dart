// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileStruct> _$fileStructSerializer = new _$FileStructSerializer();

class _$FileStructSerializer implements StructuredSerializer<FileStruct> {
  @override
  final Iterable<Type> types = const [FileStruct, _$FileStruct];
  @override
  final String wireName = 'FileStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, FileStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.filePath;
    if (value != null) {
      result
        ..add('filePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fileName;
    if (value != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FileStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filePath':
          result.filePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
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

class _$FileStruct extends FileStruct {
  @override
  final String? filePath;
  @override
  final String? fileName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FileStruct([void Function(FileStructBuilder)? updates]) =>
      (new FileStructBuilder()..update(updates))._build();

  _$FileStruct._(
      {this.filePath, this.fileName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FileStruct', 'firestoreUtilData');
  }

  @override
  FileStruct rebuild(void Function(FileStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileStructBuilder toBuilder() => new FileStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileStruct &&
        filePath == other.filePath &&
        fileName == other.fileName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, filePath.hashCode), fileName.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileStruct')
          ..add('filePath', filePath)
          ..add('fileName', fileName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FileStructBuilder implements Builder<FileStruct, FileStructBuilder> {
  _$FileStruct? _$v;

  String? _filePath;
  String? get filePath => _$this._filePath;
  set filePath(String? filePath) => _$this._filePath = filePath;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FileStructBuilder() {
    FileStruct._initializeBuilder(this);
  }

  FileStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filePath = $v.filePath;
      _fileName = $v.fileName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileStruct;
  }

  @override
  void update(void Function(FileStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileStruct build() => _build();

  _$FileStruct _build() {
    final _$result = _$v ??
        new _$FileStruct._(
            filePath: filePath,
            fileName: fileName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'FileStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
