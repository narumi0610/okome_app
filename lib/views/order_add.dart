import 'package:flutter/material.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:flutter/cupertino.dart';
import 'package:saito_of_rice_app/db/database.dart';
import 'package:saito_of_rice_app/main.dart';
import 'package:saito_of_rice_app/views/order_list.dart';
import 'package:toast/toast.dart';

class OrderAdd extends StatefulWidget {
  @override
  _OrderAddState createState() => _OrderAddState();
}

class _OrderAddState extends State<OrderAdd> {
  String _selectedItem = 'none';

  final List<String> _items = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  TextEditingController orderNameController = TextEditingController();
  TextEditingController amountOfRiceController = TextEditingController();
  TextEditingController typeOfRiceController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    orderNameController.text = '';
    amountOfRiceController.text = '';
    typeOfRiceController.text = '';
    orderDateController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backToOrderList(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('注文追加'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _selectedData(),
                  _orderNameInput(),
                  SizedBox(height: 20.0),
                  _amountOfRiceInput(_selectedItem),
                  // _buildNumberRow(),
                  SizedBox(height: 20.0),
                  _typeOfRiceInput(),
                  SizedBox(height: 20.0),
                  _orderDateInput(),
                  SizedBox(height: 60.0),
                  _orderAddButton(),
                  RaisedButton(
                    onPressed: () {
                      _showModalPicker(context);
                    },
                    child: const Text('Show Picker'),
                  ),
                  Text(_selectedItem)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //注文先名
  Widget _orderNameInput() {
    return TextField(
      controller: orderNameController,
      decoration: InputDecoration(
        hintText: '注文先名',
        icon: Icon(Icons.account_circle),
      ),
      keyboardType: TextInputType.text,
    );
  }

  //数量
  // Widget _amountOfRiceInput() {
  //   return TextField(
  //     controller: amountOfRiceController,
  //     decoration: InputDecoration(
  //       hintText: '数量',
  //       icon: Icon(Icons.trending_up),
  //     ),
  //     keyboardType: TextInputType.text,
  //   );
  // }

  Widget _amountOfRiceInput(String str) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              str,
              style: const TextStyle(fontSize: 32),
            ),
          ),
          IconButton(
            icon: Icon(Icons.expand_more),
            onPressed: () => _showModalPicker(context),
          )
        ],
      ),
    );
  }

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      _selectedItem = _items[index];
    });
  }

  void _showModalPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: _items.map(_pickerItem).toList(),
              onSelectedItemChanged: _onSelectedItemChanged,
            ),
          ),
        );
      },
    );
  }

  //種類
  Widget _typeOfRiceInput() {
    return TextField(
      controller: typeOfRiceController,
      decoration: InputDecoration(
        hintText: '種類',
        icon: Icon(Icons.public),
      ),
      keyboardType: TextInputType.text,
    );
  }

  //日時
  Widget _orderDateInput() {
    return TextField(
      controller: orderDateController,
      decoration: InputDecoration(
        hintText: '日時',
        icon: Icon(Icons.calendar_today),
      ),
      keyboardType: TextInputType.text,
    );
  }

  Widget _orderAddButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("追加する"),
        color: Colors.green[400],
        textColor: Colors.white,
        onPressed: () => _orderAddWord(),
      ),
    );
  }

  _orderAddWord() async {
    if (orderNameController.text == '' ||
        amountOfRiceController.text == '' ||
        typeOfRiceController.text == '' ||
        orderDateController.text == '') {
      Toast.show('未入力の欄があります。', context, duration: Toast.LENGTH_LONG);
      return;
    }
    var word = Word(
        strOrderName: orderNameController.text,
        strAmountOfRice: amountOfRiceController.text,
        strTypeOfRice: typeOfRiceController.text,
        strOrderDate: orderDateController.text);
    print('登録おk');
    await database.addWord(word);
    orderNameController.clear();
    amountOfRiceController.clear();
    typeOfRiceController.clear();
    orderDateController.clear();
    print('クリアおk');

    Toast.show('登録が完了しました。', context, duration: Toast.LENGTH_LONG);
  }

  //選択した日付を表示
  Widget _selectedData() {
    return Container(
      child: Text(''),
    );
  }

  Future<bool> _backToOrderList() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OrderList(),
      ),
    );
    return Future.value(false);
  }
}
