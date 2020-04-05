import 'package:checklist/models/item.dart';

class CheckListDetails {
  String projectname;
  String aircraftname;
  String checklistname;
  List<Item> checklist;

  CheckListDetails(
      {this.projectname,
      this.aircraftname,
      this.checklistname,
      this.checklist});

  CheckListDetails.fromJson(Map<String, dynamic> json) {
    projectname = json['projectname'];
    aircraftname = json['aircraftname'];
    checklistname = json['checklist'];
    if (json['checklist'] != null) {
      checklist = new List<Item>();
      json['checklist'].forEach((v) {
        checklist.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['projectname'] = this.projectname;
    data['aircraftname'] = this.aircraftname;
    data['checklist'] = this.checklistname;
    if (this.checklist != null) {
      data['checklist'] = this.checklist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
