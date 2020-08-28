import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phone_verification/screens/VisitScreen.dart';
import 'package:phone_verification/widgets/bottomapp.dart';
import 'package:phone_verification/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  String name;
  String email;
  String imgUrl;

  HomePage({this.email,this.name,this.imgUrl});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( //changed to scaffolf removinf materialapp
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Dashboard'),
        ),
        drawer: DrawerWidget(
          name: widget.name,
          email: widget.email,
          imgUrl: widget.imgUrl,
        ),
        body: Center(         //Container change to center
          //color: Colors.yellow[100],
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(50),                    
                      child: Text('Hello'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(50),                    
                      child: Text('Hello'),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(50),                    
                      child: Text('Hello'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(50),                    
                      child: Text('Hello'),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(
                    'Dashboard page',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text('Sign out from google'),
                  onPressed: (){
                    _googleSignIn.signOut(); //sign out from the current logged in f=google account
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VisitScreen() ,));
                    // print(widget.name);
                    // print(widget.email);
                    // print(widget.imgUrl);
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppWidget(),
      );
  
  }
}

