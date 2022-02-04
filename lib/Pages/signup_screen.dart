import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/colors.dart';
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
        child: Column(
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add your details to sign up",
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const Spacer(),
            CustomTextInput(hintText: "Name"),
            const Spacer(),
            CustomTextInput(hintText: "Email"),
            const Spacer(),
            CustomTextInput(hintText: "Mobile Number"),
            const Spacer(),
            CustomTextInput(hintText: "Password"),
            const Spacer(),
            CustomTextInput(hintText: "Confirm Password"),
            const Spacer(
              flex: 5,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColor.orange),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(
                      side: BorderSide(
                        color: AppColor.orange,
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account? ",
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
