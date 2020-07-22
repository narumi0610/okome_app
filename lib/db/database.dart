import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Words extends Table {
  TextColumn get strOrderName => text()();
  TextColumn get strAmountOfRice => text()();
  TextColumn get strTypeOfRice => text()();
  TextColumn get strOrderDate => text()();
  BoolColumn get isMemoriezed => boolean().withDefault(Constant(false))();
}

LazyDatabase _openConnention() {
  return LazyDatabase(() async {
    //スマホでフォルダを開ける
    final dbFolder = await getApplicationDocumentsDirectory();
    //そのフォルダのなかでwords.dbというファイルをつくる
    final file = File(p.join(dbFolder.path, 'words.db'));
    //そのファイルを開く
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Words])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnention());

  @override
  int get schemaVersion => 2;

  //create
  Future addWord(Word word) => into(words).insert(word);

  //read
  Future<List<Word>> get allWords => select(words).get();

  //update
  Future updateWord(Word word) => update(words).replace(word);
}
