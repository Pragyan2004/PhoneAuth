import 'package:flutter/material.dart';
import 'package:phoneauth/screen/registrationscreen.dart';
import 'package:phoneauth/widgets/custombutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 25),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/6.webp',
                height: 300,
                ),
                const SizedBox(height: 10),
                Text("Lets Get Started",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10),
                Text("Never a better time than now to start",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: CustomeButton(
                    onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context)=>const RegistrationScreen() ));
                    },
                    text: "Get Started",
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
