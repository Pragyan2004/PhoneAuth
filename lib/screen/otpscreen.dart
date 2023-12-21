import 'package:flutter/material.dart';
import 'package:phoneauth/screen/homescreen.dart';
import 'package:phoneauth/widgets/custombutton.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SafeArea(
        child: Container(
        child: Center(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: ()=>Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back),
        ),
      ),
    Container(
    width: 300,
    height: 200,
    child: Image.asset('image/5.webp',
    height: 200,
    ),
    ),
    const SizedBox(height: 10),
    Text("Verification",
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),),
    const SizedBox(height: 10),
    Text("Enter the OTP  send to your phone number",
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    ),
      textAlign: TextAlign.center,
    ),
      SizedBox(height: 20),
      Pinput(
          length: 5,
          showCursor: true,
        defaultPinTheme: PinTheme(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.purple.shade200),
          ),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
        onSubmitted: (value){
            setState(() {
              otpCode=value;
            });
        },
        ),
      SizedBox(height: 25),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: CustomeButton(
          text: "Verify",
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()),
            );
          },
        ),
      ),
      SizedBox(height: 20),
      Text("Didn't Recieved the otp",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black38,
        fontSize: 14,
      ),),
      SizedBox(height: 20),
      Text("Resend New",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.purple,
          fontSize: 14,
        ),),

          ],
    ),
    ),
    ),
    )
    ),
    );
    }
}
