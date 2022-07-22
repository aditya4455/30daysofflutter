import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.rollingstone.com/wp-content/uploads/2018/06/xxxtentacion-legacy-46d1d3ca-6512-453f-817d-d39ac30d3af9.jpg?resize=1800,1200&w=1200";
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.pinkAccent),
                accountName: Text("Aditya Ray"),
                accountEmail: Text("bobbyrayb98@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white),
              title: Text("Email me",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
