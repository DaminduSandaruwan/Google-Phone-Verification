import 'package:flutter/material.dart';

class FacebookAuth extends StatefulWidget {
  @override
  _FacebookAuthState createState() => _FacebookAuthState();
}

class _FacebookAuthState extends State<FacebookAuth> {
  bool isLoggedIn= true;
  Map userProfile;

  _logInWithFB() async{

  }

  _logOut(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoggedIn ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1024px-User_icon_2.svg.png",
              height: 50,
              width: 50,
            ),
            Text(''),
            OutlineButton(
              child: Text('Login With Facebook'),
              onPressed: (){
                _logOut();
              },
            ),
          ],
        ):
        OutlineButton(
          child: Text('Login With Facebook'),
          onPressed: (){
            _logInWithFB();
          },
        ),
      ),
    );
  }
}