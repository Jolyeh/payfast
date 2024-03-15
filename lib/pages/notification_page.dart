import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../packages/notif.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('Notification')),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        )
      ),

      body: ListView(padding: EdgeInsets.all(20),
          children: [
            Text('Today',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange,),

            SizedBox(height: 20,),

            Text('Yesterday',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange),
            NotifCards(titre: 'Bil Pay', sousTitre: 'Your payment has been succed', icone: Icons.file_open, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),

            SizedBox(height: 20,),

            Text('22 March 2022',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange,),
            NotifCards(titre: 'Bil Pay', sousTitre: 'Your payment has been succed', icone: Icons.file_open, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),
          ],
        ),
    );
  }
}