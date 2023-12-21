import 'package:flutter/material.dart';
import 'dart:io';

import 'package:phoneauth/widgets/custombutton.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? image;
  final nameControler = TextEditingController();
  final bioController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameControler.dispose();
    bioController.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: image == null ? const CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 50,
                      child: Icon(Icons.account_circle,
                        size: 50,
                        color: Colors.white,
                      ),
                    ) : CircleAvatar(
                      backgroundImage: FileImage(image!),
                      radius: 50,
                    ),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        textFeld(
                            hintText: "John Smit",
                            icon: Icons.account_circle,
                            inputType: TextInputType.name,
                            maxLines: 1,
                            controller: nameControler
                        ),
                        SizedBox(height: 20),

                        textFeld(
                            hintText: "abc@gmail.com",
                            icon: Icons.email,
                            inputType: TextInputType.emailAddress,
                            maxLines: 1,
                            controller: nameControler
                        ),
                        SizedBox(height: 20),

                        textFeld(
                            hintText: "Enter Your bio here...",
                            icon: Icons.edit,
                            inputType: TextInputType.name,
                            maxLines: 2,
                            controller: nameControler
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                      width: MediaQuery.of(context).size.width*80,
                      child: CustomeButton(text: "Continue", onPressed: (){}
                      ),
                  )
              ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget textFeld ({
    required String hintText,
    required IconData icon,
    required TextInputType inputType,
    required int maxLines,
    required TextEditingController controller
  }){
    return Padding(padding: EdgeInsets.only(bottom: 10),
    child: TextFormField(
      cursorColor: Colors.purple,
      controller: controller,
      keyboardType: inputType,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.purple,
          ),
          child: Icon(
            icon,
            size: 20,
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintText: hintText,
        alignLabelWithHint: true,
        border: InputBorder.none,
        fillColor: Colors.purple.shade50,
        )
      ),
    );
  }
}

