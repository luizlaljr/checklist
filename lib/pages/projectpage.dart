import 'package:flutter/material.dart';
import 'package:checklist/models/project.dart';
import 'package:checklist/pages/aircraftpage.dart';
import 'package:checklist/utils/createprojects.dart';

class ProjectPage extends StatelessWidget {
  final List<Project> projects = createProjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Defina o projeto:"),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: ListTile(
              leading: Image.asset(
                projects[index].image,
                width: 70,
                height: 50,
              ),
              title: Text(
                projects[index].title,
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AircraftPage(project: projects[index]),
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
