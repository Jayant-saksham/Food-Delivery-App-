import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/custom_text_input.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 40,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8,),
              Text(
                "Add your details to sign up",
                style: TextStyle(color: Colors.grey[800], fontSize: 16),
              ),
              SizedBox(height: 10,),
              CustomTextInput(hintText: "Name"),
              SizedBox(
                height: 12,
              ),
              CustomTextInput(hintText: "Email"),
              SizedBox(
                height: 12,
              ),
              CustomTextInput(hintText: "Mobile Number"),
              SizedBox(
                height: 12,
              ),
              CustomTextInput(hintText: "Address"),
              SizedBox(
                height: 12,
              ),
              CustomTextInput(hintText: "Password"),
              SizedBox(
                height: 12,
              ),
              CustomTextInput(hintText: "Confirm Password"),
              SizedBox(height: 10,),
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
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account? ",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
