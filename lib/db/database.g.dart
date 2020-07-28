// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Word extends DataClass implements Insertable<Word> {
  final int id;
  final String strOrderName;
  final String strAmountKgOfRice;
  final String strAmountOfRice;
  final String strTypeOfRice;
  final String strOrderDate;
  final String strNote;
  final bool isCompleted;
  Word(
      {@required this.id,
      @required this.strOrderName,
      @required this.strAmountKgOfRice,
      @required this.strAmountOfRice,
      @required this.strTypeOfRice,
      @required this.strOrderDate,
      @required this.strNote,
      @required this.isCompleted});
  factory Word.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Word(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      strOrderName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_order_name']),
      strAmountKgOfRice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}str_amount_kg_of_rice']),
      strAmountOfRice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}str_amount_of_rice']),
      strTypeOfRice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_type_of_rice']),
      strOrderDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_order_date']),
      strNote: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_note']),
      isCompleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_completed']),
    );
  }
  factory Word.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Word(
      id: serializer.fromJson<int>(json['id']),
      strOrderName: serializer.fromJson<String>(json['strOrderName']),
      strAmountKgOfRice: serializer.fromJson<String>(json['strAmountKgOfRice']),
      strAmountOfRice: serializer.fromJson<String>(json['strAmountOfRice']),
      strTypeOfRice: serializer.fromJson<String>(json['strTypeOfRice']),
      strOrderDate: serializer.fromJson<String>(json['strOrderDate']),
      strNote: serializer.fromJson<String>(json['strNote']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'strOrderName': serializer.toJson<String>(strOrderName),
      'strAmountKgOfRice': serializer.toJson<String>(strAmountKgOfRice),
      'strAmountOfRice': serializer.toJson<String>(strAmountOfRice),
      'strTypeOfRice': serializer.toJson<String>(strTypeOfRice),
      'strOrderDate': serializer.toJson<String>(strOrderDate),
      'strNote': serializer.toJson<String>(strNote),
      'isCompleted': serializer.toJson<bool>(isCompleted),
    };
  }

  @override
  WordsCompanion createCompanion(bool nullToAbsent) {
    return WordsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      strOrderName: strOrderName == null && nullToAbsent
          ? const Value.absent()
          : Value(strOrderName),
      strAmountKgOfRice: strAmountKgOfRice == null && nullToAbsent
          ? const Value.absent()
          : Value(strAmountKgOfRice),
      strAmountOfRice: strAmountOfRice == null && nullToAbsent
          ? const Value.absent()
          : Value(strAmountOfRice),
      strTypeOfRice: strTypeOfRice == null && nullToAbsent
          ? const Value.absent()
          : Value(strTypeOfRice),
      strOrderDate: strOrderDate == null && nullToAbsent
          ? const Value.absent()
          : Value(strOrderDate),
      strNote: strNote == null && nullToAbsent
          ? const Value.absent()
          : Value(strNote),
      isCompleted: isCompleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isCompleted),
    );
  }

  Word copyWith(
          {int id,
          String strOrderName,
          String strAmountKgOfRice,
          String strAmountOfRice,
          String strTypeOfRice,
          String strOrderDate,
          String strNote,
          bool isCompleted}) =>
      Word(
        id: id ?? this.id,
        strOrderName: strOrderName ?? this.strOrderName,
        strAmountKgOfRice: strAmountKgOfRice ?? this.strAmountKgOfRice,
        strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
        strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
        strOrderDate: strOrderDate ?? this.strOrderDate,
        strNote: strNote ?? this.strNote,
        isCompleted: isCompleted ?? this.isCompleted,
      );
  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('id: $id, ')
          ..write('strOrderName: $strOrderName, ')
          ..write('strAmountKgOfRice: $strAmountKgOfRice, ')
          ..write('strAmountOfRice: $strAmountOfRice, ')
          ..write('strTypeOfRice: $strTypeOfRice, ')
          ..write('strOrderDate: $strOrderDate, ')
          ..write('strNote: $strNote, ')
          ..write('isCompleted: $isCompleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          strOrderName.hashCode,
          $mrjc(
              strAmountKgOfRice.hashCode,
              $mrjc(
                  strAmountOfRice.hashCode,
                  $mrjc(
                      strTypeOfRice.hashCode,
                      $mrjc(strOrderDate.hashCode,
                          $mrjc(strNote.hashCode, isCompleted.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Word &&
          other.id == this.id &&
          other.strOrderName == this.strOrderName &&
          other.strAmountKgOfRice == this.strAmountKgOfRice &&
          other.strAmountOfRice == this.strAmountOfRice &&
          other.strTypeOfRice == this.strTypeOfRice &&
          other.strOrderDate == this.strOrderDate &&
          other.strNote == this.strNote &&
          other.isCompleted == this.isCompleted);
}

class WordsCompanion extends UpdateCompanion<Word> {
  final Value<int> id;
  final Value<String> strOrderName;
  final Value<String> strAmountKgOfRice;
  final Value<String> strAmountOfRice;
  final Value<String> strTypeOfRice;
  final Value<String> strOrderDate;
  final Value<String> strNote;
  final Value<bool> isCompleted;
  const WordsCompanion({
    this.id = const Value.absent(),
    this.strOrderName = const Value.absent(),
    this.strAmountKgOfRice = const Value.absent(),
    this.strAmountOfRice = const Value.absent(),
    this.strTypeOfRice = const Value.absent(),
    this.strOrderDate = const Value.absent(),
    this.strNote = const Value.absent(),
    this.isCompleted = const Value.absent(),
  });
  WordsCompanion.insert({
    this.id = const Value.absent(),
    @required String strOrderName,
    @required String strAmountKgOfRice,
    @required String strAmountOfRice,
    @required String strTypeOfRice,
    @required String strOrderDate,
    @required String strNote,
    this.isCompleted = const Value.absent(),
  })  : strOrderName = Value(strOrderName),
        strAmountKgOfRice = Value(strAmountKgOfRice),
        strAmountOfRice = Value(strAmountOfRice),
        strTypeOfRice = Value(strTypeOfRice),
        strOrderDate = Value(strOrderDate),
        strNote = Value(strNote);
  WordsCompanion copyWith(
      {Value<int> id,
      Value<String> strOrderName,
      Value<String> strAmountKgOfRice,
      Value<String> strAmountOfRice,
      Value<String> strTypeOfRice,
      Value<String> strOrderDate,
      Value<String> strNote,
      Value<bool> isCompleted}) {
    return WordsCompanion(
      id: id ?? this.id,
      strOrderName: strOrderName ?? this.strOrderName,
      strAmountKgOfRice: strAmountKgOfRice ?? this.strAmountKgOfRice,
      strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
      strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
      strOrderDate: strOrderDate ?? this.strOrderDate,
      strNote: strNote ?? this.strNote,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class $WordsTable extends Words with TableInfo<$WordsTable, Word> {
  final GeneratedDatabase _db;
  final String _alias;
  $WordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

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

  final VerificationMeta _strAmountKgOfRiceMeta =
      const VerificationMeta('strAmountKgOfRice');
  GeneratedTextColumn _strAmountKgOfRice;
  @override
  GeneratedTextColumn get strAmountKgOfRice =>
      _strAmountKgOfRice ??= _constructStrAmountKgOfRice();
  GeneratedTextColumn _constructStrAmountKgOfRice() {
    return GeneratedTextColumn(
      'str_amount_kg_of_rice',
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

  final VerificationMeta _strNoteMeta = const VerificationMeta('strNote');
  GeneratedTextColumn _strNote;
  @override
  GeneratedTextColumn get strNote => _strNote ??= _constructStrNote();
  GeneratedTextColumn _constructStrNote() {
    return GeneratedTextColumn(
      'str_note',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  GeneratedBoolColumn _isCompleted;
  @override
  GeneratedBoolColumn get isCompleted =>
      _isCompleted ??= _constructIsCompleted();
  GeneratedBoolColumn _constructIsCompleted() {
    return GeneratedBoolColumn('is_completed', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        strOrderName,
        strAmountKgOfRice,
        strAmountOfRice,
        strTypeOfRice,
        strOrderDate,
        strNote,
        isCompleted
      ];
  @override
  $WordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'words';
  @override
  final String actualTableName = 'words';
  @override
  VerificationContext validateIntegrity(WordsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.strOrderName.present) {
      context.handle(
          _strOrderNameMeta,
          strOrderName.isAcceptableValue(
              d.strOrderName.value, _strOrderNameMeta));
    } else if (isInserting) {
      context.missing(_strOrderNameMeta);
    }
    if (d.strAmountKgOfRice.present) {
      context.handle(
          _strAmountKgOfRiceMeta,
          strAmountKgOfRice.isAcceptableValue(
              d.strAmountKgOfRice.value, _strAmountKgOfRiceMeta));
    } else if (isInserting) {
      context.missing(_strAmountKgOfRiceMeta);
    }
    if (d.strAmountOfRice.present) {
      context.handle(
          _strAmountOfRiceMeta,
          strAmountOfRice.isAcceptableValue(
              d.strAmountOfRice.value, _strAmountOfRiceMeta));
    } else if (isInserting) {
      context.missing(_strAmountOfRiceMeta);
    }
    if (d.strTypeOfRice.present) {
      context.handle(
          _strTypeOfRiceMeta,
          strTypeOfRice.isAcceptableValue(
              d.strTypeOfRice.value, _strTypeOfRiceMeta));
    } else if (isInserting) {
      context.missing(_strTypeOfRiceMeta);
    }
    if (d.strOrderDate.present) {
      context.handle(
          _strOrderDateMeta,
          strOrderDate.isAcceptableValue(
              d.strOrderDate.value, _strOrderDateMeta));
    } else if (isInserting) {
      context.missing(_strOrderDateMeta);
    }
    if (d.strNote.present) {
      context.handle(_strNoteMeta,
          strNote.isAcceptableValue(d.strNote.value, _strNoteMeta));
    } else if (isInserting) {
      context.missing(_strNoteMeta);
    }
    if (d.isCompleted.present) {
      context.handle(_isCompletedMeta,
          isCompleted.isAcceptableValue(d.isCompleted.value, _isCompletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Word map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Word.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(WordsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.strOrderName.present) {
      map['str_order_name'] =
          Variable<String, StringType>(d.strOrderName.value);
    }
    if (d.strAmountKgOfRice.present) {
      map['str_amount_kg_of_rice'] =
          Variable<String, StringType>(d.strAmountKgOfRice.value);
    }
    if (d.strAmountOfRice.present) {
      map['str_amount_of_rice'] =
          Variable<String, StringType>(d.strAmountOfRice.value);
    }
    if (d.strTypeOfRice.present) {
      map['str_type_of_rice'] =
          Variable<String, StringType>(d.strTypeOfRice.value);
    }
    if (d.strOrderDate.present) {
      map['str_order_date'] =
          Variable<String, StringType>(d.strOrderDate.value);
    }
    if (d.strNote.present) {
      map['str_note'] = Variable<String, StringType>(d.strNote.value);
    }
    if (d.isCompleted.present) {
      map['is_completed'] = Variable<bool, BoolType>(d.isCompleted.value);
    }
    return map;
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
