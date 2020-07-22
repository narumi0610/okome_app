import 'package:flutter/material.dart';
import 'package:saito_of_rice_app/common/order_content_card.dart';
import 'package:saito_of_rice_app/db/database.dart';
import 'package:saito_of_rice_app/views/order_add.dart';

import '../main.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  List<Word> _wordList = List();

  @override
  void initState() {
    super.initState();
    _getAllWords();
  }

  void _getAllWords() async {
    _wordList = await database.allWords;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注文リスト'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => _addNewOrder(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildEventList(),
      ),
    );
  }

  _addNewOrder() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OrderAdd(),
      ),
    );
  }

  Widget _buildEventList() {
    return ListView.builder(
      itemCount: _wordList.length,
      itemBuilder: (context, int position) {
        return _orderInfo(position);
      },
    );
  }

  Widget _orderInfo(int position) {
    return OrderContentCard(
        _wordList[position].strOrderName,
        _wordList[position].strAmountOfRice,
        _wordList[position].strTypeOfRice,
        _wordList[position].strOrderDate);
  }
}
