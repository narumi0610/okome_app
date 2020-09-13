import 'package:flutter/material.dart';
import 'package:saito_of_rice_app/views/order_edit.dart';

class OrderContentCard extends StatefulWidget {
  final String shipmentDate;
  final String orderName;
  final String amountKgOfRice;
  final String amountOfRice;
  final String typeOfRice;
  final String arrivalDate;
  final String orderNote;
  final void Function() deleteOrder;

  OrderContentCard(
      this.shipmentDate,
      this.orderName,
      this.amountKgOfRice,
      this.amountOfRice,
      this.typeOfRice,
      this.arrivalDate,
      this.orderNote,
      this.deleteOrder);

  @override
  _OrderContentCardState createState() => _OrderContentCardState();
}

class _OrderContentCardState extends State<OrderContentCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '注文発送日： ${widget.shipmentDate}',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Text(
                      '注文先名： ${widget.orderName}',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Text(
                      '数量： ${widget.amountOfRice}kg × ${widget.amountKgOfRice}',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Text(
                      '種類： ${widget.typeOfRice}',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Text(
                      '発送完了日： ${widget.arrivalDate}',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    widget.orderNote == null
                        ? Container()
                        : Text(
                            '備考： ${widget.orderNote}',
                            style: TextStyle(fontSize: 17.0),
                          ),
                  ],
                ),
                // Icon(
                //   Icons.arrow_forward_ios,
                //   color: Colors.grey,
                //   size: 17.0,
                // ),
              ],
            ),
          ),
        ),
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => OrderEdit(
        //           widget.shipmentDate,
        //           widget.orderName,
        //           widget.amountKgOfRice,
        //           widget.amountOfRice,
        //           widget.typeOfRice,
        //           widget.arrivalDate,
        //           widget.orderNote),
        //     ),
        //   );
        //   print('短く押しました');
        // },
        onLongPress: () {
          // print('長押ししました');
          widget.deleteOrder();
        });
  }
}
