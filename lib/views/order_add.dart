import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:flutter/cupertino.dart';
import 'package:saito_of_rice_app/common/amount_picker.dart';
import 'package:saito_of_rice_app/common/data_picker.dart';
import 'package:saito_of_rice_app/common/model.dart';
import 'package:saito_of_rice_app/common/type_picker.dart';
import 'package:saito_of_rice_app/db/database.dart';
import 'package:saito_of_rice_app/main.dart';
import 'package:saito_of_rice_app/views/order_list.dart';
import 'package:toast/toast.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:intl/date_symbol_data_local.dart';

class OrderAdd extends StatefulWidget {
  @override
  _OrderAddState createState() => _OrderAddState();
}

class _OrderAddState extends State<OrderAdd> {
  var model = ExampleModel();

  TextEditingController orderNameController = TextEditingController();
  // TextEditingController amountOfRiceController = TextEditingController();
  TextEditingController typeOfRiceController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();

  String selectedKg = '10';
  String selectedAmount = '1';
  String selectedType = 'はえぬき';
  String selectedData = '';

  // get sentDateFormatted  {
  //   initializeDateFormatting("ja_JP");

  //   DateTime datetime = DateTime.parse(selectedData); // StringからDate

  //   var formatter = new DateFormat('yyyy/MM/dd(E)', "ja_JP");
  //   var formatted = formatter.format(datetime); // DateからString
  //   return formatted;
  // }

  @override
  void initState() {
    super.initState();
    orderNameController.text = '';
    // amountOfRiceController.text = '';
    // typeOfRiceController.text = '';
    // orderDateController.text = '';
    selectedKg = '10';
    selectedAmount = '1';
    selectedData = '';
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
                  // _amountOfRiceInput(),
                  AmountPicker(
                    selectedKg: selectedKg,
                    selectedAmount: selectedAmount,
                  ),
                  SizedBox(height: 20.0),
                  // _typeOfRiceInput(),
                  TypePicker(
                    selectedType: selectedType,
                  ),
                  SizedBox(height: 20.0),
                  DataPicker(
                    selectedData: selectedData,
                  ),
                  SizedBox(height: 60.0),
                  _orderAddButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildScrollRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 150.0,
          child: RaisedButton(
            child: Text("Scroll Picker"),
            onPressed: () => showMaterialScrollPicker(
              context: context,
              title: "Pick Your City",
              items: model.riceType,
              selectedItem: model.selectedRiceType,
              onChanged: (value) =>
                  setState(() => model.selectedRiceType = value),
              onCancelled: () => print("Scroll Picker cancelled"),
            ),
          ),
        ),
        Expanded(
          child: Text(
            model.selectedRiceType.toString(),
            textAlign: TextAlign.right,
          ),
        ),
      ],
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

  //日時
  Widget _orderDateInput() {
    return TextField(
      controller: orderDateController,
      decoration: InputDecoration(
        hintText: '配達完了日',
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
        // amountOfRiceController.text == '' ||
        // typeOfRiceController.text == '' ||
        // orderDateController.text == '' ||
        selectedKg == '' ||
        selectedAmount == '' ||
        selectedType == '' ||
        selectedData == '') {
      Toast.show('未入力の欄があります。', context, duration: Toast.LENGTH_LONG);
      return;
    }
    var word = Word(
        strOrderName: orderNameController.text,
        // strAmountOfRice: amountOfRiceController.text,
        strAmountOfRice: selectedKg,
        // strTypeOfRice: typeOfRiceController.text,
        strTypeOfRice: selectedType,
        // strOrderDate: orderDateController.text,
        strOrderDate: selectedData,
        id: null,
        isCompleted: null,
        strAmountKgOfRice: null,
        strNote: null);
    print('登録おk');
    await database.addWord(word);
    orderNameController.clear();
    // amountOfRiceController.clear();
    // typeOfRiceController.clear();
    selectedKg = '10';
    selectedType = '';
    // orderDateController.clear();
    selectedData = '';
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
