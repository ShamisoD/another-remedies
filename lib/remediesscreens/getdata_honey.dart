import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;

import 'package:remediesagain/cards/remediescard.dart';
import 'package:url_launcher/url_launcher.dart';


class GetDatahoney extends StatefulWidget {

  @override
  GetDatahoneyState createState() => GetDatahoneyState();
}

class GetDatahoneyState extends State<GetDatahoney> {

  final Uri _url = Uri.parse('https://www.mayoclinic.org/drugs-supplements-honey/art-20363819');




  String data = '';
  fetchFiledata() async {
    String responseText;
    responseText = await rootBundle.loadString('textfolder/honey.txt');

    setState(() {
      data = responseText;
    });

  }

  @override
  void initState(){
    fetchFiledata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text('Honey'
        ),),
      body: SingleChildScrollView(

        child: Column(
            children: <Widget>[Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage('assets/honey.jpg'),
                      child: InkWell(),

                      height:240,
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: EdgeInsets.all(56).copyWith(bottom:0),
                    )

                  ],
                ),
                  SizedBox(height: 100),
                  Padding(padding: EdgeInsets.all(16).copyWith(bottom:0),
                    child: Text(
                      data,
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  SizedBox(height: 8),

                  ElevatedButton.icon(
                    label: Text('Source'),
                    onPressed: _launchUrl,
                    icon: Icon(Icons.web_asset),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const
                        EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                        textStyle: Theme.of(context).textTheme.headline3
                    ),

                  ),
                  SizedBox (height: 8,),

                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          child: Text('Back',
                              style: TextStyle(fontSize: 20)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return RemediesCard();

                            },
                            ),
                            );
                          }
                      )

                    ],
                  ),




                ],

              ),
            ),
            ]
        ),


      ),
    );


  }
  void _launchUrl() async {
    if (!await launchUrl (_url)) throw 'could not launch $_url';
  }
}





