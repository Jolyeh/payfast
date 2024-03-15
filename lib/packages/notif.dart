import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifCards extends StatelessWidget {

  String? titre;
  String? sousTitre;
  IconData? icone;
  Color? couleurIcone;
  Color? couleurArriere;

  NotifCards(
      {super.key,
      required this.titre,
      required this.sousTitre,
      required this.icone,
      this.couleurIcone,
      required this.couleurArriere});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: CupertinoColors.systemGrey6),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: couleurArriere, shape: BoxShape.circle),
            child: Icon(
              icone,
              color: couleurIcone,
            ),
          ),
          title: Text(
            '$titre',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '$sousTitre',
            style: TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
