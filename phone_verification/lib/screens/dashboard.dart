import 'package:flutter/material.dart';
import 'package:phone_verification/services/authservices.dart';
import 'package:phone_verification/widgets/bottomapp.dart';
import 'package:phone_verification/widgets/drawer.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( //changed to scaffolf removinf materialapp
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Dashboard'),
        ),
        drawer: DrawerWidget(
          imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1024px-User_icon_2.svg.png",
          name: "Phone User",
          email: "test@123.com",
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
                  child: Text('SignOut'),
                  onPressed: (){
                    AuthService().signOut();
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

