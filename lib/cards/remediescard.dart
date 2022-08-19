import 'package:flutter/material.dart';
import 'package:remediesagain/remediesscreens/getdata_blackjack.dart';
import 'package:remediesagain/remediesscreens/getdata_aloe.dart';
import 'package:remediesagain/remediesscreens/getdata_comfrey.dart';
import 'package:remediesagain/remediesscreens/getdata_cucumber.dart';
import 'package:remediesagain/remediesscreens/getdata_fern.dart';
import 'package:remediesagain/remediesscreens/getdata_garlic.dart';
import 'package:remediesagain/remediesscreens/getdata_ginger.dart';
import 'package:remediesagain/remediesscreens/getdata_honey.dart';
import 'package:remediesagain/remediesscreens/getdata_lemongrass.dart';
import 'package:remediesagain/remediesscreens/getdata_mango_leaves.dart';
import 'package:remediesagain/remediesscreens/getdata_mint.dart';
import 'package:remediesagain/remediesscreens/getdata_nasturtium.dart';
import 'package:remediesagain/remediesscreens/getdata_onion.dart';
import 'package:remediesagain/remediesscreens/getdata_pineapple.dart';
import 'package:remediesagain/remediesscreens/getdata_shallots.dart';
import 'package:remediesagain/remediesscreens/getdata_spinach.dart';
import 'package:remediesagain/remediesscreens/getdata_sunflower.dart';
import 'package:remediesagain/remediesscreens/getdata_yarrow.dart';
import 'package:remediesagain/reusablecard.dart';



class RemediesCard extends StatefulWidget {
  @override
  RemediesCardState createState() => RemediesCardState();
}
  class RemediesCardState extends State<RemediesCard>{

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              ReusableCard(picture:AssetImage('assets/aloevera.jpg'), name: Text('Aloe Vera',style:Theme.of(context).textTheme.headline6,), getdata: GetDataaloe(),),
              ReusableCard(picture:AssetImage('assets/blackjack.jpg'), name: Text('Blackjack',style:Theme.of(context).textTheme.headline6,), getdata: GetDatablack(),),
              ReusableCard(picture:AssetImage('assets/comfrey.jpg'), name: Text('Comfrey',style:Theme.of(context).textTheme.headline6,), getdata: GetDatacomfrey(),),
              ReusableCard(picture:AssetImage('assets/cucumber.jpg'), name: Text('Cucumber',style:Theme.of(context).textTheme.headline6,), getdata: GetDatacucumber(),),
              ReusableCard(picture:AssetImage('assets/fern.jpg'), name: Text('Boston Fern',style:Theme.of(context).textTheme.headline6,), getdata: GetDatafern(),),
              ReusableCard(picture:AssetImage('assets/garlic.jpg'), name: Text('Garlic',style:Theme.of(context).textTheme.headline6,), getdata: GetDatagarlic(),),
              ReusableCard(picture:AssetImage('assets/ginger.jpg'), name: Text('Ginger',style:Theme.of(context).textTheme.headline6,), getdata: GetDataginger(),),
              ReusableCard(picture:AssetImage('assets/honey.jpg'), name: Text('Honey',style:Theme.of(context).textTheme.headline6,), getdata: GetDatahoney(),),
              ReusableCard(picture:AssetImage('assets/lemongrass.jpg'), name: Text('Lemongrass',style:Theme.of(context).textTheme.headline6,), getdata: GetDatalemongrass(),),
              ReusableCard(picture:AssetImage('assets/mango_leaves.jpg'), name: Text('Mango leaves',style:Theme.of(context).textTheme.headline6,), getdata: GetDatamango(),),
              ReusableCard(picture:AssetImage('assets/mint.jpg'), name: Text('Mint',style:Theme.of(context).textTheme.headline6,), getdata: GetDatamint(),),
              ReusableCard(picture:AssetImage('assets/nasturtium.jpg'), name: Text('Nasturtium',style:Theme.of(context).textTheme.headline6,), getdata: GetDatanastur(),),
              ReusableCard(picture:AssetImage('assets/onion.jpg'), name: Text('Onion',style:Theme.of(context).textTheme.headline6,), getdata: GetDataonion(),),
              ReusableCard(picture:AssetImage('assets/pineapple.jpg'), name: Text('Pineapple',style:Theme.of(context).textTheme.headline6,), getdata: GetDatapineapple(),),
              ReusableCard(picture:AssetImage('assets/shallots.jpg'), name: Text('Shallots',style:Theme.of(context).textTheme.headline6,), getdata: GetDatashallots(),),
              ReusableCard(picture:AssetImage('assets/spinach.jpg'), name: Text('Spinach',style:Theme.of(context).textTheme.headline6,), getdata: GetDataspinach(),),
              ReusableCard(picture:AssetImage('assets/sunflower.jpg'), name: Text('Sunflower',style:Theme.of(context).textTheme.headline6,), getdata: GetDatasunflower(),),
              ReusableCard(picture:AssetImage('assets/yarrow.jpg'), name: Text('Yarrow',style:Theme.of(context).textTheme.headline6,), getdata: GetDatayarrow(),),
            ]
          )

      )
    );
  }
}


