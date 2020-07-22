import 'package:flutter/material.dart';
import 'package:saito_of_rice_app/views/order_edit.dart';

class OrderContentCard extends StatefulWidget {
  final String orderName;
  final String amountOfRice;
  final String typeOfRice;
  final String orderDate;
  // final String sendRiceCheck;

  OrderContentCard(
      this.orderName, this.amountOfRice, this.typeOfRice, this.orderDate);

  @override
  _OrderContentCardState createState() => _OrderContentCardState();
}

class _OrderContentCardState extends State<OrderContentCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Row(
          children: [
            Container(
              width: 300.0,
              height: 150.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '注文先名： ${widget.orderName}',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '数量： ${widget.amountOfRice}',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '種類： ${widget.typeOfRice}',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '日付： ${widget.orderDate}',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'sendRiceCheck',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 17.0,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderEdit(
              widget.orderName,
              widget.amountOfRice,
              widget.typeOfRice,
              widget.orderDate,
            ),
          ),
        );
      },
    );
  }
}
