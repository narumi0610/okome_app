import 'package:flutter/material.dart';

class OrderEdit extends StatefulWidget {
  final String shipmentDate;
  final String orderName;
  final String amountkgOfRice;
  final String amountOfRice;
  final String typeOfRice;
  final String orderDate;
  final String orderNote;

  OrderEdit(this.shipmentDate, this.orderName, this.amountkgOfRice,
      this.amountOfRice, this.typeOfRice, this.orderDate, this.orderNote);

  @override
  _OrderEditState createState() => _OrderEditState();
}

class _OrderEditState extends State<OrderEdit> {
  TextEditingController orderNameController = TextEditingController();
  TextEditingController amountOfRiceController = TextEditingController();
  TextEditingController typeOfRiceController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注文編集'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: orderNameController,
                decoration: InputDecoration(
                  hintText: '注文先名',
                  icon: Icon(Icons.account_circle),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: amountOfRiceController,
                decoration: InputDecoration(
                  hintText: '数量',
                  icon: Icon(Icons.trending_up),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: typeOfRiceController,
                decoration: InputDecoration(
                  hintText: '種類',
                  icon: Icon(Icons.public),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: orderDateController,
                decoration: InputDecoration(
                  hintText: '日時',
                  icon: Icon(Icons.calendar_today),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 60.0),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text("確定する"),
                  color: Colors.green[400],
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
