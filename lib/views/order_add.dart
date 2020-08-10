import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:intl/intl.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:flutter/cupertino.dart';
import 'package:saito_of_rice_app/common/model.dart';
import 'package:saito_of_rice_app/db/database.dart';
import 'package:saito_of_rice_app/main.dart';
import 'package:saito_of_rice_app/views/order_list.dart';
import 'package:toast/toast.dart';

class OrderAdd extends StatefulWidget {
  final DateTime data;
  OrderAdd(this.data);

  @override
  _OrderAddState createState() => _OrderAddState(this.data);
}

class _OrderAddState extends State<OrderAdd> {
  DateTime data;
  _OrderAddState(this.data);

  var model = ExampleModel();

  TextEditingController orderNameController = TextEditingController();
  TextEditingController orderNoteController = TextEditingController();
  String _selectedKg = '10';
  String _selectedAmount = '1';
  String _selectedType = 'はえぬき';
  DateTime selectedArriveData;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backToOrderList(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('注文追加'),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _dataShipment(),
                    _nameInput(),
                    SizedBox(height: 20.0),
                    _amountPicker(),
                    SizedBox(height: 20.0),
                    _typePicker(),
                    SizedBox(height: 20.0),
                    _dataPicker(),
                    SizedBox(height: 20.0),
                    _noteInput(),
                    SizedBox(height: 60.0),
                    _orderAddButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /*--------------------------
    注文発送日
  ---------------------------*/
  Widget _dataShipment() {
    return Container(
      child: Text(
        DateFormat.yMMMd('ja').format(data),
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }

  Future<bool> _backToOrderList() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OrderList(data),
      ),
    );
    return Future.value(false);
  }

  /*--------------------------
    注文先名
  ---------------------------*/
  Widget _nameInput() {
    return TextField(
      controller: orderNameController,
      decoration: InputDecoration(
        hintText: '注文先名',
        icon: Icon(Icons.account_circle),
      ),
      keyboardType: TextInputType.text,
    );
  }

  /*--------------------------
    数量のPicker
  ---------------------------*/
  Widget _amountPicker() {
    return Row(
      children: [
        Icon(
          Icons.trending_up,
          color: Colors.grey[600],
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Text(
            '$_selectedKg kg ×　$_selectedAmount 個',
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
        IconButton(
          icon: Icon(Icons.expand_more),
          onPressed: () => _showModalAmountPicker(context),
        )
      ],
    );
  }

  Widget _amountPickerItem(String kg) {
    return Text(
      kg.toString(),
      style: const TextStyle(fontSize: 32),
    );
  }

  void _showModalAmountPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Expanded(
                  child: CupertinoPicker(
                      itemExtent: 40,
                      children:
                          model.amountItems.map(_amountPickerItem).toList(),
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          _selectedKg = model.amountItems[index];
                        });
                      }),
                ),
                Expanded(
                  child: CupertinoPicker(
                    itemExtent: 40,
                    children: List<Widget>.generate(
                      100,
                      (int index) {
                        return Center(
                          child: Text('$index'),
                        );
                      },
                    ),
                    onSelectedItemChanged: (int index) {
                      setState(() {
                        _selectedAmount = index.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /*--------------------------
  米種のPicker
  ---------------------------*/

  Widget _typePicker() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.public,
            color: Colors.grey[600],
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Text(
              '$_selectedType',
              style: const TextStyle(fontSize: 24.0),
            ),
          ),
          IconButton(
            icon: Icon(Icons.expand_more),
            onPressed: () => _showModalTypePicker(context),
          )
        ],
      ),
    );
  }

  Widget _typePickerItem(String selectedType) {
    return Text(
      selectedType,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _showModalTypePicker(BuildContext context) {
    String selectedType;
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: CupertinoTheme(
                    data: CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        pickerTextStyle:
                            TextStyle(fontSize: 3.0, color: Colors.black),
                      ),
                    ),
                    child: CupertinoPicker(
                      itemExtent: 40,
                      children: model.items.map(_typePickerItem).toList(),
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectedType = model.items[index];
                          this._selectedType = selectedType;
                          print('$selectedType');
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /*--------------------------
    配達完了日付のPicker
  ---------------------------*/
  Widget _dataPicker() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.calendar_today,
          color: Colors.grey[600],
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Text(
            DateFormat.yMMMd('ja').format(model.date),
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
        IconButton(
          icon: Icon(Icons.expand_more),
          onPressed: () => showMaterialDatePicker(
              context: context,
              selectedDate: model.date,
              onChanged: (value) {
                setState(() {
                  model.date = value;
                });
                print(model.date);
              }),
        ),
      ],
    );
  }

  /*--------------------------
    備考
  ---------------------------*/
  Widget _noteInput() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.create,
          color: Colors.grey[600],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.multiline,
              controller: orderNoteController,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "備考",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /*--------------------------
    追加確定ボタン
  ---------------------------*/
  Widget _orderAddButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text("追加する"),
          color: Colors.green[400],
          textColor: Colors.white,
          onPressed: () {
            _orderAddWord();
          }),
    );
  }

  /*--------------------------
    データベースに保存
  ---------------------------*/
  _orderAddWord() async {
    if (data == null ||
        orderNameController.text == '' ||
        _selectedKg == '' ||
        _selectedAmount == '' ||
        _selectedType == '' ||
        model.date == null) {
      Toast.show('未入力の欄があります。', context, duration: Toast.LENGTH_LONG);

      print(
          '${orderNameController.text}  : $data  : $_selectedKg : $_selectedAmount : $_selectedType : ${model.date}');
      return;
    }

    var order = OrdersCompanion.insert(
      strShipmentDate: DateFormat.yMMMd('ja').format(data),
      strOrderName: orderNameController.text,
      strAmountOfRice: _selectedKg,
      strAmountKgOfRice: _selectedAmount,
      strTypeOfRice: _selectedType,
      strArriveDate: DateFormat.yMMMd('ja').format(model.date),
      strNote: orderNoteController.text,
    );

    print('登録できました');

    await database.addOrder(order);
    orderNameController.clear();
    // selectedArriveData = DateTime.now();
    orderNoteController.clear();
    print('クリアできました');

    Toast.show('登録が完了しました。', context, duration: Toast.LENGTH_LONG);
  }
}
