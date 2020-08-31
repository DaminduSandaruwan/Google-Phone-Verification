import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phone_verification/screens/HomePage.dart';

class GoogleAuth extends StatefulWidget {
  @override
  _GoogleAuthState createState() => _GoogleAuthState();
}

class _GoogleAuthState extends State<GoogleAuth> {

  bool _isLoggedIn = false;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);



  _logIn() async{
    try {
      //await _googleSignIn.signIn();
      await _googleSignIn.signIn().catchError((onError) => print(onError));
      setState(() {
        _isLoggedIn=true;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  _logOut(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoggedIn ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              _googleSignIn.currentUser.photoUrl,
              height:50.0,
              width: 50.0,
            ),
            Text(_googleSignIn.currentUser.displayName),
            Text(_googleSignIn.currentUser.email),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
                  email: _googleSignIn.currentUser.email,
                  name: _googleSignIn.currentUser.displayName,
                  imgUrl: _googleSignIn.currentUser.photoUrl,
                ),));
              },
              child: Text('Continue'),
            ),
            OutlineButton(
              child: Text("Logout"),
              onPressed: (){
                _logOut();
                
              } 
            ),
          ],
        ) 
        : OutlineButton(
          child: Text("Login With google"),
          onPressed: (){
            _logIn();
          },
        )
      ),
    );
  }
}