import 'package:flutter/material.dart';
import 'package:checklist/models/project.dart';
import 'package:checklist/pages/checklistpage.dart';

class AircraftPage extends StatelessWidget {
  final Project project;

  AircraftPage({Key key, @required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
      ),
      body: ListView.builder(
        itemCount: project.aircrafts.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: ListTile(
              leading: Icon(Icons.local_airport),
              title: Text(
                project.aircrafts[index].title,
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
                    builder: (context) => CheckListPage(
                        project: project, aircraft: project.aircrafts[index]),
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
