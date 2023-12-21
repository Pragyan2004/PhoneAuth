import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth/screen/otpscreen.dart';
import 'package:phoneauth/widgets/custombutton.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController phoneController=TextEditingController();

Country selectCountry=Country(
  phoneCode:"91" , 
  countryCode: "In",
   e164Sc: 0, 
   geographic: true, 
   level: 1, 
   name: "India", 
   example: "India", 
   displayName: "India", 
   displayNameNoCountryCode: "In", 
   e164Key: "",
   );
  @override
  Widget build(BuildContext context) {
    phoneController.selection=TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 180,
                    child: Image.asset('image/1.webp',
                    height: 350,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("Registration",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  const SizedBox(height: 10),
                  Text("Add Your Phone Number.We will send you a verification code",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    cursorColor: Colors.purple,
                    controller:phoneController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    onChanged: (value){
                      setState(() {
                        phoneController.text=value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Phone number",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      prefixIcon:Container(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: (){
                            showCountryPicker(
                                context: context,
                                countryListTheme:
                                const CountryListThemeData(
                                    bottomSheetHeight: 500,
                                ),
                                onSelect: (value){
                                  setState(() {
                                    selectCountry=value;
                                  });
                                });
                          },
                          child: Text("${selectCountry.flagEmoji}, + ${selectCountry.phoneCode}",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                          ),),
                        ),
                      ),
                      suffixIcon: phoneController.text.length>9 ? Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                      :null,
                    ),
                  ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomeButton(text: "Login",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()),
                    );
                  }),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
