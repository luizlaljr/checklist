import 'package:flutter/widgets.dart';

class Checklist {
  String title;
  IconData icon;

  Checklist({this.title, this.icon});

  Checklist.fromJson(Map<String, dynamic> json){
    title = json['title'];
    icon = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    return data;
  }

}