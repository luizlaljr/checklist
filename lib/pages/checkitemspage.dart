import 'package:checklist/models/item.dart';
import 'package:checklist/utils/showAlertDialog.dart';
import 'package:flutter/material.dart';
import 'package:checklist/models/checklistdetails.dart';

class CheckItemsPage extends StatefulWidget {
  final CheckListDetails checklistdetails;

  CheckItemsPage({Key key, @required this.checklistdetails}) : super(key: key);

  @override
  _CheckItemsPageState createState() => _CheckItemsPageState();
}

class _CheckItemsPageState extends State<CheckItemsPage> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.checklistdetails.projectname +
            " " +
            widget.checklistdetails.aircraftname +
            "  |  " +
            widget.checklistdetails.checklistname),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              changeIcon(check),
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                markAllCheck(widget.checklistdetails.checklist, check);
                check = changeCheck(check);
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemExtent: 70,
        itemCount: widget.checklistdetails.checklist.length,
        itemBuilder: (_, int index) {
          final Item item = widget.checklistdetails.checklist[index];

          return CheckboxListTile(
              title: Text(
                item.title,
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              subtitle: Text(
                item.subtitle,
                textScaleFactor: 1.3,
              ),
              key: Key(item.title),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                  bool showAlert = checkWellDone(
                    widget.checklistdetails.checklist,
                  );
                  if (showAlert) {
                    showAlertDialog(
                      context,
                      widget.checklistdetails.checklistname,
                    );
                    check = false;
                    markAllCheck(widget.checklistdetails.checklist, check);
                  }
                });
              });
        },
      ),
    );
  }

  markAllCheck(List<Item> lista, bool check) {
    for (var item in lista) {
      item.done = check;
    }
  }

  bool changeCheck(check) {
    return !check;
  }

  IconData changeIcon(bool check) {
    return check ? Icons.check_box : Icons.check_box_outline_blank;
  }

  bool checkWellDone(List<Item> lista) {
    bool welldone = true;
    for (var item in lista) {
      if (!item.done) {
        welldone = !welldone;
        break;
      }
    }
    return welldone;
  }
}
