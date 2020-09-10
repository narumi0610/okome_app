import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get strShipmentDate => text()();
  TextColumn get strOrderName => text()();
  TextColumn get strAmountKgOfRice => text()();
  TextColumn get strAmountOfRice => text()();
  TextColumn get strTypeOfRice => text()();
  TextColumn get strArriveDate => text()();
  TextColumn get strNote => text()();
}

LazyDatabase _openConnention() {
  return LazyDatabase(() async {
    //スマホでフォルダを開ける
    final dbFolder = await getApplicationDocumentsDirectory();
    //そのフォルダのなかでwords.dbというファイルをつくる
    final file = File(p.join(dbFolder.path, 'orders.db'));
    //そのファイルを開く
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Orders])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnention());

  @override
  int get schemaVersion => 4;

  //create
  Future addOrder(OrdersCompanion order) => into(orders).insert(order);

  //read
  Future<List<Order>> get allOrder => select(orders).get();

  //update
  Future updateOrder(Order order) => update(orders).replace(order);

  //delete
  Future<int> deleteOrder(int id) {
    return (delete(orders)..where((it) => it.id.equals(id))).go();
  }
}
