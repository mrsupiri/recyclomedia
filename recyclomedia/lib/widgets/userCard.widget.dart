import 'package:flutter/material.dart';
import 'package:recyclomedia/fonts.dart';
import 'package:recyclomedia/layout.constants.dart';

//Boarding Cards
class UserCard extends StatelessWidget {
  final String userName;
  final String imgurl;
  final String label;
  final int level;

  const UserCard({this.userName, this.imgurl, this.label, this.level});

  @override
  Widget build(BuildContext context) {
    //Viewport
    final vw = MediaQuery.of(context).size.width;
    final vh= MediaQuery.of(context).size.height;

    return new Container(
        width: vw,
        margin: EdgeInsets.only(top: Layout.cardTopMargin),
        padding: EdgeInsets.all(Layout.userCardPadding),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgurl),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.black, width: 5)),
        child: Column(
           children: [
            Align(
              alignment: Alignment.centerLeft,

                child: Text(userName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSize.userCardHeading,
                        fontFamily: Fonts.SilkScreen)),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: vh > 680 ? EdgeInsets.only(top: Layout.contentSpacing) :EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: FontSize.userCardText,
                          fontFamily: Fonts.SilkScreen),
                    ),
                    Text(
                      level.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: FontSize.userCardText,
                          fontFamily: Fonts.SilkScreen),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
