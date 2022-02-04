import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                ),
                Text(
                  "Foodiez",
                  style: TextStyle(
                    fontSize: 78,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Billabong',
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Flexible(
                  child: Text(
                    "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(
                          side: BorderSide(
                            color: Colors.orange,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(
                          side: BorderSide(color: Colors.orange, width: 1.5),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: Text(
                      "Create an Account",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
