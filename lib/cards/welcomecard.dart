import 'package:flutter/material.dart';
import 'package:remediesagain/cards/remediescard.dart';
import 'package:remediesagain/remediesscreens/getdata_disclaimer.dart';

class WelcomeCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
    color: Colors.black,
        child: Stack(
    children:[
      Positioned.fill(
    child:Opacity(
        opacity:0.3,
    child: Image.asset('assets/fruitsnveg.jpg',
    fit:BoxFit.cover),
    ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 180,
                height: 180,
                color: Colors.green,
                alignment: Alignment.center,
                child: Icon(Icons.nature,
                color: Colors.white,
                size:130)
              )
            ),
            SizedBox(height:50),
            Text('Remedies',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,

            ),
            SizedBox(height: 30),
            Text('Your food can be your medicine',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,),

            SizedBox(height: 40),

            ElevatedButton(
        child: Text('Go to remedies'),
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      padding: const
          EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      textStyle: Theme.of(context).textTheme.headline3
    ),

    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)
      {
        return RemediesCard();

      }
      )
      );
    },
            ),
    SizedBox (height: 8,),

    ButtonBar(
    alignment: MainAxisAlignment.start,
    children: [
    TextButton(
    child: Text('Disclaimer',
    style: TextStyle(fontSize: 20,
    color: Colors.white,)),
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return GetDatadisclaimer();
    }
      ),
    );
    }
    ),

          ],

      ),

        ]
    )
    )
    ]
    )
    )
    );
  }
}
