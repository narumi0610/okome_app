// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Order extends DataClass implements Insertable<Order> {
  final int id;
  final String strShipmentDate;
  final String strOrderName;
  final String strAmountKgOfRice;
  final String strAmountOfRice;
  final String strTypeOfRice;
  final String strArriveDate;
  final String strNote;
  Order(
      {@required this.id,
      @required this.strShipmentDate,
      @required this.strOrderName,
      @required this.strAmountKgOfRice,
      @required this.strAmountOfRice,
      @required this.strTypeOfRice,
      @required this.strArriveDate,
      @required this.strNote});
  factory Order.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Order(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      strShipmentDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_shipment_date']),
      strOrderName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_order_name']),
      strAmountKgOfRice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}str_amount_kg_of_rice']),
      strAmountOfRice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}str_amount_of_rice']),
      strTypeOfRice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_type_of_rice']),
      strArriveDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_arrive_date']),
      strNote: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_note']),
    );
  }
  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      strShipmentDate: serializer.fromJson<String>(json['strShipmentDate']),
      strOrderName: serializer.fromJson<String>(json['strOrderName']),
      strAmountKgOfRice: serializer.fromJson<String>(json['strAmountKgOfRice']),
      strAmountOfRice: serializer.fromJson<String>(json['strAmountOfRice']),
      strTypeOfRice: serializer.fromJson<String>(json['strTypeOfRice']),
      strArriveDate: serializer.fromJson<String>(json['strArriveDate']),
      strNote: serializer.fromJson<String>(json['strNote']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'strShipmentDate': serializer.toJson<String>(strShipmentDate),
      'strOrderName': serializer.toJson<String>(strOrderName),
      'strAmountKgOfRice': serializer.toJson<String>(strAmountKgOfRice),
      'strAmountOfRice': serializer.toJson<String>(strAmountOfRice),
      'strTypeOfRice': serializer.toJson<String>(strTypeOfRice),
      'strArriveDate': serializer.toJson<String>(strArriveDate),
      'strNote': serializer.toJson<String>(strNote),
    };
  }

  @override
  OrdersCompanion createCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      strShipmentDate: strShipmentDate == null && nullToAbsent
          ? const Value.absent()
          : Value(strShipmentDate),
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
      strArriveDate: strArriveDate == null && nullToAbsent
          ? const Value.absent()
          : Value(strArriveDate),
      strNote: strNote == null && nullToAbsent
          ? const Value.absent()
          : Value(strNote),
    );
  }

  Order copyWith(
          {int id,
          String strShipmentDate,
          String strOrderName,
          String strAmountKgOfRice,
          String strAmountOfRice,
          String strTypeOfRice,
          String strArriveDate,
          String strNote}) =>
      Order(
        id: id ?? this.id,
        strShipmentDate: strShipmentDate ?? this.strShipmentDate,
        strOrderName: strOrderName ?? this.strOrderName,
        strAmountKgOfRice: strAmountKgOfRice ?? this.strAmountKgOfRice,
        strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
        strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
        strArriveDate: strArriveDate ?? this.strArriveDate,
        strNote: strNote ?? this.strNote,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('strShipmentDate: $strShipmentDate, ')
          ..write('strOrderName: $strOrderName, ')
          ..write('strAmountKgOfRice: $strAmountKgOfRice, ')
          ..write('strAmountOfRice: $strAmountOfRice, ')
          ..write('strTypeOfRice: $strTypeOfRice, ')
          ..write('strArriveDate: $strArriveDate, ')
          ..write('strNote: $strNote')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          strShipmentDate.hashCode,
          $mrjc(
              strOrderName.hashCode,
              $mrjc(
                  strAmountKgOfRice.hashCode,
                  $mrjc(
                      strAmountOfRice.hashCode,
                      $mrjc(
                          strTypeOfRice.hashCode,
                          $mrjc(
                              strArriveDate.hashCode, strNote.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.strShipmentDate == this.strShipmentDate &&
          other.strOrderName == this.strOrderName &&
          other.strAmountKgOfRice == this.strAmountKgOfRice &&
          other.strAmountOfRice == this.strAmountOfRice &&
          other.strTypeOfRice == this.strTypeOfRice &&
          other.strArriveDate == this.strArriveDate &&
          other.strNote == this.strNote);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<String> strShipmentDate;
  final Value<String> strOrderName;
  final Value<String> strAmountKgOfRice;
  final Value<String> strAmountOfRice;
  final Value<String> strTypeOfRice;
  final Value<String> strArriveDate;
  final Value<String> strNote;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.strShipmentDate = const Value.absent(),
    this.strOrderName = const Value.absent(),
    this.strAmountKgOfRice = const Value.absent(),
    this.strAmountOfRice = const Value.absent(),
    this.strTypeOfRice = const Value.absent(),
    this.strArriveDate = const Value.absent(),
    this.strNote = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    @required String strShipmentDate,
    @required String strOrderName,
    @required String strAmountKgOfRice,
    @required String strAmountOfRice,
    @required String strTypeOfRice,
    @required String strArriveDate,
    @required String strNote,
  })  : strShipmentDate = Value(strShipmentDate),
        strOrderName = Value(strOrderName),
        strAmountKgOfRice = Value(strAmountKgOfRice),
        strAmountOfRice = Value(strAmountOfRice),
        strTypeOfRice = Value(strTypeOfRice),
        strArriveDate = Value(strArriveDate),
        strNote = Value(strNote);
  OrdersCompanion copyWith(
      {Value<int> id,
      Value<String> strShipmentDate,
      Value<String> strOrderName,
      Value<String> strAmountKgOfRice,
      Value<String> strAmountOfRice,
      Value<String> strTypeOfRice,
      Value<String> strArriveDate,
      Value<String> strNote}) {
    return OrdersCompanion(
      id: id ?? this.id,
      strShipmentDate: strShipmentDate ?? this.strShipmentDate,
      strOrderName: strOrderName ?? this.strOrderName,
      strAmountKgOfRice: strAmountKgOfRice ?? this.strAmountKgOfRice,
      strAmountOfRice: strAmountOfRice ?? this.strAmountOfRice,
      strTypeOfRice: strTypeOfRice ?? this.strTypeOfRice,
      strArriveDate: strArriveDate ?? this.strArriveDate,
      strNote: strNote ?? this.strNote,
    );
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  final GeneratedDatabase _db;
  final String _alias;
  $OrdersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _strShipmentDateMeta =
      const VerificationMeta('strShipmentDate');
  GeneratedTextColumn _strShipmentDate;
  @override
  GeneratedTextColumn get strShipmentDate =>
      _strShipmentDate ??= _constructStrShipmentDate();
  GeneratedTextColumn _constructStrShipmentDate() {
    return GeneratedTextColumn(
      'str_shipment_date',
      $tableName,
      false,
    );
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

  final VerificationMeta _strArriveDateMeta =
      const VerificationMeta('strArriveDate');
  GeneratedTextColumn _strArriveDate;
  @override
  GeneratedTextColumn get strArriveDate =>
      _strArriveDate ??= _constructStrArriveDate();
  GeneratedTextColumn _constructStrArriveDate() {
    return GeneratedTextColumn(
      'str_arrive_date',
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

  @override
  List<GeneratedColumn> get $columns => [
        id,
        strShipmentDate,
        strOrderName,
        strAmountKgOfRice,
        strAmountOfRice,
        strTypeOfRice,
        strArriveDate,
        strNote
      ];
  @override
  $OrdersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'orders';
  @override
  final String actualTableName = 'orders';
  @override
  VerificationContext validateIntegrity(OrdersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.strShipmentDate.present) {
      context.handle(
          _strShipmentDateMeta,
          strShipmentDate.isAcceptableValue(
              d.strShipmentDate.value, _strShipmentDateMeta));
    } else if (isInserting) {
      context.missing(_strShipmentDateMeta);
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
    if (d.strArriveDate.present) {
      context.handle(
          _strArriveDateMeta,
          strArriveDate.isAcceptableValue(
              d.strArriveDate.value, _strArriveDateMeta));
    } else if (isInserting) {
      context.missing(_strArriveDateMeta);
    }
    if (d.strNote.present) {
      context.handle(_strNoteMeta,
          strNote.isAcceptableValue(d.strNote.value, _strNoteMeta));
    } else if (isInserting) {
      context.missing(_strNoteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Order.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(OrdersCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.strShipmentDate.present) {
      map['str_shipment_date'] =
          Variable<String, StringType>(d.strShipmentDate.value);
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
    if (d.strArriveDate.present) {
      map['str_arrive_date'] =
          Variable<String, StringType>(d.strArriveDate.value);
    }
    if (d.strNote.present) {
      map['str_note'] = Variable<String, StringType>(d.strNote.value);
    }
    return map;
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $OrdersTable _orders;
  $OrdersTable get orders => _orders ??= $OrdersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [orders];
}
