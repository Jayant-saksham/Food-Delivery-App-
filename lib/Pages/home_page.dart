import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/Firebase/authetication.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String username = FirebaseAuth.instance.currentUser!.displayName.toString();
    String email = FirebaseAuth.instance.currentUser!.email.toString();

    List<String> list = username.split(" ");
    username = list[0];
    String urlImage = FirebaseAuth.instance.currentUser!.photoURL.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: const Icon(Icons.menu, color: Colors.black),
      ),
      drawer: mydrawer(
        urlImage: urlImage,
        email: email,
        name: username,
        context: context
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome ${username}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(urlImage),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.home,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

BottomNavigationBar bottomNavigationBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "",
      ),
    ],
  );
}
