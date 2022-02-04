import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/Firebase/authetication.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            FirebaseAuth.instance.currentUser!.photoURL.toString(),
          ),
        ),
        Center(
          child: IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Authentication.signOut(context: context).then((value) {
                return Fluttertoast.showToast(
                  msg: "Logged Out",
                );
              });
            },
          ),
        ),
      ],
    ));
  }
}
