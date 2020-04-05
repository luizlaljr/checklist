import 'package:checklist/models/checklist.dart';
import 'package:flutter/material.dart';

List<Checklist> createChecklist() {
  List<Checklist> checklists = List();

  checklists.add(
    new Checklist(
      title: "Pré-Voo",
      icon: Icons.flight_takeoff,
    ),
  );
  checklists.add(
    new Checklist(
      title: "Pós-Voo",
      icon: Icons.flight_land,
    ),
  );

  return checklists;
}
