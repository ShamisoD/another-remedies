import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ContactCard extends StatefulWidget {




  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  final Uri _url = Uri.parse('https://www.instagram.com/mazi_zw/');
  final Uri _url2 = Uri.parse('https://www.facebook.com/mazidhumbuzi');




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children:[ Positioned.fill(
            child:Opacity(
              opacity:0.3,
              child: Image.asset('assets/contact.jpg',
                  fit:BoxFit.cover),
            ),
          ),
        Center(
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:[
      ElevatedButton.icon(
          label: Text('Instagram'),
          onPressed: _launchUrl,
          icon: Icon(Icons.add_a_photo),
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: const
              EdgeInsets.symmetric(horizontal: 50,vertical: 20),
              textStyle: Theme.of(context).textTheme.headline3
          ),

      ),
          SizedBox(height: 50,),

          ElevatedButton.icon(
              label: Text('Facebook'),
              onPressed: _launchUrl2,
              icon: Icon(Icons.people),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: const
                  EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  textStyle: Theme.of(context).textTheme.headline3
              ),

            ),
]
      ),
        )
    ]
      )
      )
      );


  }
  void _launchUrl() async {
    if (!await launchUrl (_url)) throw 'could not launch $_url';
  }

  void _launchUrl2() async {
    if (!await launchUrl (_url2)) throw 'could not launch $_url2';
  }
}


