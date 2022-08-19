import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({ required this.picture, required this.name, required this.getdata});

  final AssetImage picture;
  final Text name;
  final Widget getdata;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return getdata;
          },
          )
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)
          ),
          child:Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image:picture,
                  fit: BoxFit.fill
                )
            ),
            child:name,
            alignment: Alignment.center,


          ),
        )
    );
  }
}


