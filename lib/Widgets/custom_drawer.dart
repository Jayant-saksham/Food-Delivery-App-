import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/colors.dart';
import 'package:food_delivery/Firebase/authetication.dart';

Drawer mydrawer({String urlImage = "", String name= '', String email = '', required BuildContext context}) {
  
  return Drawer(
    child: Container(
      color: AppColor.orange.withOpacity(0.9),
      child: ListView(
        children: [
          DrawerHeader(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 46,
                    child: CircleAvatar(
                      radius: 43,
                      backgroundImage: NetworkImage(urlImage),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      Text(email),
                    ],
                  )
            
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline),
            title: Text("Favorite"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          InkWell(
            onTap: () => Authentication.signOut(context: context),
            child: ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Logout"),
            ),
          ),
          
        ],
      ),
    ),
  );
}
