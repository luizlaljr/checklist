import 'package:flutter/material.dart';
import 'package:checklist/models/aircraft.dart';
import 'package:checklist/models/checklistdetails.dart';
import 'package:checklist/models/project.dart';
import 'package:checklist/pages/checkitemspage.dart';

class CheckListPage extends StatelessWidget {
  final Project project;
  final Aircraft aircraft;

  CheckListPage({Key key, @required this.project, this.aircraft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title + " " + aircraft.title),
      ),
      body: ListView.builder(
        itemCount: aircraft.checklists.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: ListTile(
              leading: Icon(aircraft.checklists[index].icon),
              title: Text(
                aircraft.checklists[index].title,
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[400],
                )
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckItemsPage(
                        checklistdetails: defineCheckList(project, aircraft,
                            aircraft.checklists[index].title)),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

CheckListDetails defineCheckList(
    Project project, Aircraft aircraft, String checklistindex) {
  CheckListDetails checklistdetails;
  if (checklistindex == "Pré-Voo") {
    checklistdetails = new CheckListDetails(
      projectname: project.title,
      aircraftname: aircraft.title,
      checklistname: checklistindex,
      checklist: aircraft.beforeflight,
    );
  } else {
    checklistdetails = new CheckListDetails(
      projectname: project.title,
      aircraftname: aircraft.title,
      checklistname: checklistindex,
      checklist: aircraft.afterflight,
    );
  }
  return checklistdetails;
}
