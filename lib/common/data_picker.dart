import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:moor/moor.dart';
import 'package:saito_of_rice_app/common/model.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DataPicker extends StatefulWidget {
  final String selectedData;

  DataPicker({this.selectedData});
  @override
  _DataPickerState createState() => _DataPickerState();
}

class _DataPickerState extends State<DataPicker> {
  String selectedData;

  _DataPickerState({this.selectedData});

  var model = ExampleModel();
  @override
  Widget build(BuildContext context) {
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
                selectedData = value.toString();
              }),
        ),
      ],
    );
  }
}
