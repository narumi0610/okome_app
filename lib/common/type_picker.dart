import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypePicker extends StatefulWidget {
  final String selectedType;

  TypePicker({this.selectedType});

  @override
  _TypePickerState createState() => _TypePickerState();
}

class _TypePickerState extends State<TypePicker> {
  String selectedType;

  _TypePickerState({this.selectedType});

  final List<String> _items = [
    'はえぬき',
    'つや姫',
    '玄米',
  ];

  @override
  Widget build(BuildContext context) {
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
              '$selectedType',
              style: const TextStyle(fontSize: 24.0),
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

  Widget _pickerItem(String selectedType) {
    return Text(
      selectedType,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      selectedType = _items[index];
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
                      children: _items.map(_pickerItem).toList(),
                      onSelectedItemChanged: _onSelectedItemChanged,
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
}
