import 'package:flutter/material.dart';
import 'package:phone_verification/screens/facbookLogin.dart';
import 'package:phone_verification/screens/googleSign.dart';
import 'package:phone_verification/services/authservices.dart';

class VisitScreen extends StatefulWidget {
  @override
  _VisitScreenState createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Damindu Sandaruwan App'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Verify with Phone'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AuthService().handleAuth(),));
                },
              ),
              RaisedButton(
                child: Text('Register with Gmail'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleAuth(),));
                },
              ),
              RaisedButton(
                child: Text('Register with Facebook'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FacebookAuth(),));
                },
              ),
            ],
          ),
        ),
        // AuthService().handleAuth(),
      ),
    );
  }
}