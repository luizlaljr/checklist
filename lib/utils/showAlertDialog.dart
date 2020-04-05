import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String checklist) {
  // set up the button
  Widget okButton = RaisedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
    color: Color.fromRGBO(92, 142, 206, 1),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Container(
      child: Image.asset(choiceImage(checklist)),
      alignment: Alignment.center,
      //margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(247, 247, 247, 1),
      ),
    ),
    content: Text(
      checklist+" realizado com sucesso!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        color: Colors.blue[800],
      ),
    ),
    actions: [
      okButton,
    ],
    backgroundColor: Color.fromRGBO(247, 247, 247, 1),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

String choiceImage(String checklist) {
  String path;
  if (checklist == "Pré-Voo") {
    path = "assets/images/welldone.png";
  } else {
    path = "assets/images/goodnight.jpg";
  }
  return path;
}
