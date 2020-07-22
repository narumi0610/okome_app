// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Word extends DataClass implements Insertable<Word> {
  final String strOrderName;
  final String strAmountOfRice;
  final String strTypeOfRice;
  final String strOrderDate;
  Word(
      {@required this.strOrderName,
      @required this.strAmountOfRice,
      @required this.strTypeOfRice,
      @required this.strOrderDate});
  factory Word.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Word(
      strOrderName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_order_name']),
      strAmountOfRice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}str_amount_of_rice']),
      strTypeOfRice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_type_of_rice']),
      strOrderDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_order_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || strOrderName != null) {
      map['str_order_name'] = Variable<String>(strOrderName);
    }
    if (!nullToAbsent || strAmountOfRice != null) {
      map['str_amount_of_rice'] = Variable<String>(strAmountOfRice);
    }
    if (!nullToAbsent || strTypeOfRice != null) {
      map['str_type_of_rice'] = Variable<String>(strTypeOfRice);
    }
    if (!nullToAbsent || strOrderDate != null) {
      map['str_order_date'] = Variable<String>(strOrderDate);
    }
    return map;
  }

  WordsCompanion toCompanion(bool nullToAbsent) {
    return WordsCompanion(
      strOrderName: strOrderName == null && nullToAbsent
          ? const Value.absent()
          : Value(strOrderName),
      strAmountOfRice: strAmountOfRice == null && nullToAbsent
          ? const Value.absent()
          : Value(strAmountOfRice),
      strTypeOfRice: strTypeOfRice == null && nullToAbsent
          ? const Value.absent()
          : Value(strTypeOfRice),
      strOrderDate: strOrderDate == null && nullToAbsent
          ? const Value.absent()
          : Value(strOrderDate),
    );
  }

  factory Word.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Word(
      strOrderName: serializer.fromJson<String>(json['strOrderName']),
      strAmountOfRice: serializer.fromJson<String>(json['strAmountOfRice']),
      strTypeOfRice: serializer.fromJson<String>(json['strTypeOfRice']),
      strOrderDate: serializer.fromJson<String>(json['strOrderDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'strOrderName': serializer.toJson<String>(strOrderName),
      'strAmountOfRice': serializer.toJson<String>(strAmountOfRice),
      'strTypeOfRice': serializer.toJson<String>(strTypeOfRice),
      'strOrderDate': serializer.toJson<String>(strOrderDate),
    };
  }

  Word copyWith(
          {String strOrderName,
          String strAmountOfRice,
          String strTypeOfRice,
          String strOrderDate}) =>
      Word(
        strOrderName: strOrderName ?? this.strOrderName,
        strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
        strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
        strOrderDate: strOrderDate ?? this.strOrderDate,
      );
  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('strOrderName: $strOrderName, ')
          ..write('strAmountOfRice: $strAmountOfRice, ')
          ..write('strTypeOfRice: $strTypeOfRice, ')
          ..write('strOrderDate: $strOrderDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      strOrderName.hashCode,
      $mrjc(strAmountOfRice.hashCode,
          $mrjc(strTypeOfRice.hashCode, strOrderDate.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Word &&
          other.strOrderName == this.strOrderName &&
          other.strAmountOfRice == this.strAmountOfRice &&
          other.strTypeOfRice == this.strTypeOfRice &&
          other.strOrderDate == this.strOrderDate);
}

class WordsCompanion extends UpdateCompanion<Word> {
  final Value<String> strOrderName;
  final Value<String> strAmountOfRice;
  final Value<String> strTypeOfRice;
  final Value<String> strOrderDate;
  const WordsCompanion({
    this.strOrderName = const Value.absent(),
    this.strAmountOfRice = const Value.absent(),
    this.strTypeOfRice = const Value.absent(),
    this.strOrderDate = const Value.absent(),
  });
  WordsCompanion.insert({
    @required String strOrderName,
    @required String strAmountOfRice,
    @required String strTypeOfRice,
    @required String strOrderDate,
  })  : strOrderName = Value(strOrderName),
        strAmountOfRice = Value(strAmountOfRice),
        strTypeOfRice = Value(strTypeOfRice),
        strOrderDate = Value(strOrderDate);
  static Insertable<Word> custom({
    Expression<String> strOrderName,
    Expression<String> strAmountOfRice,
    Expression<String> strTypeOfRice,
    Expression<String> strOrderDate,
  }) {
    return RawValuesInsertable({
      if (strOrderName != null) 'str_order_name': strOrderName,
      if (strAmountOfRice != null) 'str_amount_of_rice': strAmountOfRice,
      if (strTypeOfRice != null) 'str_type_of_rice': strTypeOfRice,
      if (strOrderDate != null) 'str_order_date': strOrderDate,
    });
  }

  WordsCompanion copyWith(
      {Value<String> strOrderName,
      Value<String> strAmountOfRice,
      Value<String> strTypeOfRice,
      Value<String> strOrderDate}) {
    return WordsCompanion(
      strOrderName: strOrderName ?? this.strOrderName,
      strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
      strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
      strOrderDate: strOrderDate ?? this.strOrderDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (strOrderName.present) {
      map['str_order_name'] = Variable<String>(strOrderName.value);
    }
    if (strAmountOfRice.present) {
      map['str_amount_of_rice'] = Variable<String>(strAmountOfRice.value);
    }
    if (strTypeOfRice.present) {
      map['str_type_of_rice'] = Variable<String>(strTypeOfRice.value);
    }
    if (strOrderDate.present) {
      map['str_order_date'] = Variable<String>(strOrderDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordsCompanion(')
          ..write('strOrderName: $strOrderName, ')
          ..write('strAmountOfRice: $strAmountOfRice, ')
          ..write('strTypeOfRice: $strTypeOfRice, ')
          ..write('strOrderDate: $strOrderDate')
          ..write(')'))
        .toString();
  }
}

class $WordsTable extends Words with TableInfo<$WordsTable, Word> {
  final GeneratedDatabase _db;
  final String _alias;
  $WordsTable(this._db, [this._alias]);
  final VerificationMeta _strOrderNameMeta =
      const VerificationMeta('strOrderName');
  GeneratedTextColumn _strOrderName;
  @override
  GeneratedTextColumn get strOrderName =>
      _strOrderName ??= _constructStrOrderName();
  GeneratedTextColumn _constructStrOrderName() {
    return GeneratedTextColumn(
      'str_order_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strAmountOfRiceMeta =
      const VerificationMeta('strAmountOfRice');
  GeneratedTextColumn _strAmountOfRice;
  @override
  GeneratedTextColumn get strAmountOfRice =>
      _strAmountOfRice ??= _constructStrAmountOfRice();
  GeneratedTextColumn _constructStrAmountOfRice() {
    return GeneratedTextColumn(
      'str_amount_of_rice',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strTypeOfRiceMeta =
      const VerificationMeta('strTypeOfRice');
  GeneratedTextColumn _strTypeOfRice;
  @override
  GeneratedTextColumn get strTypeOfRice =>
      _strTypeOfRice ??= _constructStrTypeOfRice();
  GeneratedTextColumn _constructStrTypeOfRice() {
    return GeneratedTextColumn(
      'str_type_of_rice',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strOrderDateMeta =
      const VerificationMeta('strOrderDate');
  GeneratedTextColumn _strOrderDate;
  @override
  GeneratedTextColumn get strOrderDate =>
      _strOrderDate ??= _constructStrOrderDate();
  GeneratedTextColumn _constructStrOrderDate() {
    return GeneratedTextColumn(
      'str_order_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [strOrderName, strAmountOfRice, strTypeOfRice, strOrderDate];
  @override
  $WordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'words';
  @override
  final String actualTableName = 'words';
  @override
  VerificationContext validateIntegrity(Insertable<Word> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('str_order_name')) {
      context.handle(
          _strOrderNameMeta,
          strOrderName.isAcceptableOrUnknown(
              data['str_order_name'], _strOrderNameMeta));
    } else if (isInserting) {
      context.missing(_strOrderNameMeta);
    }
    if (data.containsKey('str_amount_of_rice')) {
      context.handle(
          _strAmountOfRiceMeta,
          strAmountOfRice.isAcceptableOrUnknown(
              data['str_amount_of_rice'], _strAmountOfRiceMeta));
    } else if (isInserting) {
      context.missing(_strAmountOfRiceMeta);
    }
    if (data.containsKey('str_type_of_rice')) {
      context.handle(
          _strTypeOfRiceMeta,
          strTypeOfRice.isAcceptableOrUnknown(
              data['str_type_of_rice'], _strTypeOfRiceMeta));
    } else if (isInserting) {
      context.missing(_strTypeOfRiceMeta);
    }
    if (data.containsKey('str_order_date')) {
      context.handle(
          _strOrderDateMeta,
          strOrderDate.isAcceptableOrUnknown(
              data['str_order_date'], _strOrderDateMeta));
    } else if (isInserting) {
      context.missing(_strOrderDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Word map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Word.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WordsTable createAlias(String alias) {
    return $WordsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $WordsTable _words;
  $WordsTable get words => _words ??= $WordsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [words];
}
