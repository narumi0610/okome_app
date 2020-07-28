import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmountPicker extends StatefulWidget {
  final String selectedKg;
  final String selectedAmount;

  AmountPicker({this.selectedKg, this.selectedAmount});

  @override
  _AmountPickerState createState() => _AmountPickerState();
}

class _AmountPickerState extends State<AmountPicker> {
  String selectedKg = '10', selectedAmount = '1';

  _AmountPickerState({this.selectedKg, this.selectedAmount});

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   selectedAmount = '10';
  //   selectedKg = '1';
  //   super.initState();
  // }

  final List<String> _items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '10',
    '20',
    '30',
  ];

  @override
  Widget build(BuildContext context) {
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
            '$selectedKg kg ×　$selectedAmount 個',
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
        IconButton(
          icon: Icon(Icons.expand_more),
          onPressed: () => _showModalPicker(context),
        )
      ],
    );
  }

  Widget _pickerItem(String kg) {
    return Text(
      kg.toString(),
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChangedKg(int index) {
    setState(() {
      selectedKg = _items[index];
    });
  }

  void _onSelectedItemChangedAmount(int index) {
    setState(() {
      selectedAmount = index.toString();
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
            child: Row(
              children: [
                Expanded(
                  child: CupertinoPicker(
                    itemExtent: 40,
                    children: _items.map(_pickerItem).toList(),
                    onSelectedItemChanged: _onSelectedItemChangedKg,
                  ),
                ),
                Expanded(
                  child: CupertinoPicker(
                    itemExtent: 40,
                    children: List<Widget>.generate(
                      24,
                      (int index) {
                        return Center(
                          child: Text('${index + 1}'),
                        );
                      },
                    ),
                    onSelectedItemChanged: _onSelectedItemChangedAmount,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
