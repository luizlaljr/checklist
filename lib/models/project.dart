import 'package:checklist/models/aircraft.dart';

class Project {
  String title;
  List<Aircraft> aircrafts;
  String image;

  Project({this.title, this.aircrafts, this.image});

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['beforeflight'] != null) {
      aircrafts = new List<Aircraft>();
      json['aircrafts'].forEach((v) {
        aircrafts.add(new Aircraft.fromJson(v));
      });
    }
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.aircrafts != null) {
      data['aircrafts'] = this.aircrafts.map((v) => v.toJson()).toList();
    }
    data['image'] = this.image;
    return data;
  }
}
