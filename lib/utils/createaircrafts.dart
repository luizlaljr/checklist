import 'package:checklist/models/aircraft.dart';
import 'package:checklist/utils/loaditemsafterflightninenine.dart';
import 'package:checklist/utils/loaditemsafterflightnineseven.dart';
import 'package:checklist/utils/loaditemsbeforeflightninenine.dart';
import 'package:checklist/utils/loaditemsbeforeflightnineseven.dart';

List<Aircraft> createAircrafts(String project, List<String> aircraftlist) {
  List<Aircraft> aircrafts = List();
  for (var aircraft in aircraftlist) {
    if (project == "C-99A") {
      aircrafts.add(new Aircraft(
        title: aircraft,
        beforeflight: loadItemsBeforeFlightNineNine(),
        afterflight: loadItemsAfterFlightNineNine(),
      ));
    } else {
      aircrafts.add(new Aircraft(
        title: aircraft,
        beforeflight: loadItemsBeforeFlightNineSeven(),
        afterflight: loadItemsAfterFlightNineSeven(),
      ));
    }
  }

  return aircrafts;
}
