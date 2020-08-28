import 'package:flutter/material.dart';
import 'package:phone_verification/screens/dashboard.dart';
import 'package:phone_verification/screens/eventScreen.dart';
import 'package:phone_verification/screens/radioScreen.dart';
import 'package:phone_verification/screens/tvScreen.dart';


class BottomAppWidget extends StatefulWidget {
  const BottomAppWidget({
    Key key,
  }) : super(key: key);

  @override
  _BottomAppWidgetState createState() => _BottomAppWidgetState();
}

class _BottomAppWidgetState extends State<BottomAppWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.yellow[100],
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.blue[100],
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.tv,
                  size: 30,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TvScreen(),));
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.radio,
                  size: 30,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RadioScreen(),));
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(                
                  Icons.home,
                  size: 35,
                ),
              ),
              onTap: (){
                setState(() {
                  print('home');
                });
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardPage(),));
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.event,
                  size: 30,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EventScreen(),));
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      )
    );
  }
}

