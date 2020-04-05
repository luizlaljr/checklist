import 'package:checklist/models/project.dart';
import 'package:checklist/utils/createaircrafts.dart';

List<Project> createProjects(){
  final String c99a = "C-99A";
  final String c97a = "C-97A";

  List<Project> projects = List();

  final List<String> aircraftsNineNine = [
    "2520",
    "2522",
    "2523",
    "2524",
    "2525",
  ];

  final List<String> aircraftsNineSeven = [
    "2009",
    "2012",
    "2013",
  ];

  projects.add(new Project(
    title: c99a,
    aircrafts: createAircrafts(c99a, aircraftsNineNine),
    image: "assets/images/c99.jpg",
  ));

  projects.add(new Project(
    title: c97a,
    aircrafts: createAircrafts(c97a, aircraftsNineSeven),
    image: "assets/images/c97.jpg",
  ));

  return projects;
}
