import 'package:checklist/models/checklist.dart';
import 'package:checklist/models/item.dart';
import 'package:checklist/utils/createchecklist.dart';

class Aircraft {
  String title;
  List<Checklist> checklists = createChecklist();
  List<Item> beforeflight;
  List<Item> afterflight;

  Aircraft({this.title, this.beforeflight, this.afterflight});

  Aircraft.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['checklists'] != null) {
      checklists = new List<Checklist>();
      json['checklists'].forEach((v) {
        checklists.add(new Checklist.fromJson(v));
      });
    }
    if (json['beforeflight'] != null) {
      beforeflight = new List<Item>();
      json['beforeflight'].forEach((v) {
        beforeflight.add(new Item.fromJson(v));
      });
    }
    if (json['afterflight'] != null) {
      afterflight = new List<Item>();
      json['afterflight'].forEach((v) {
        afterflight.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.checklists != null) {
      data['checklists'] = this.checklists.map((v) => v.toJson()).toList();
    }
    if (this.beforeflight != null) {
      data['beforeflight'] = this.beforeflight.map((v) => v.toJson()).toList();
    }
    if (this.afterflight != null) {
      data['afterflight'] = this.afterflight.map((v) => v.toJson()).toList();
    }
    return data;
  }

}
