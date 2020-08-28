import 'package:flutter/material.dart';


 class DrawerWidget extends StatefulWidget {
   String name;
   String email;
   String imgUrl;
   
   DrawerWidget({this.email,this.imgUrl,this.name});

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:<Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(widget.name),
            accountEmail: Text(widget.email),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child: Image.network(
                  widget.imgUrl,
                  
                )
                
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home,color: Colors.black,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help,color: Colors.black,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help,color: Colors.black,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help,color: Colors.black,),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Sign Out'),
              leading: Icon(Icons.exit_to_app,color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}