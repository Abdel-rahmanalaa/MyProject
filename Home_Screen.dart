import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
           backgroundColor: Colors.black,
           leading: Icon(
             Icons.menu,
           ),
           title: Text(
             'First App',
           ),
           actions:
           [
             IconButton(
               icon: Icon(
                 Icons.notification_important,
               //  color: Colors.white,
               ),
               onPressed:onNotification,
             ),
             IconButton(
               icon: Icon(
               Icons.search,
              // color: Colors.white,
             ),
               onPressed:()
               {
                 print('hello');
               },
             ),
           ],

         ),
      body: Column(
        children:
        [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                  20.0
                ),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:
                [
                  Image(
                  image: NetworkImage(
                    'https://www.color-hex.com/palettes/50764.png',
                  ),
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.black.withOpacity(.6),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void onNotification()
  {
    print('notification Cliked');
  }
}