import 'package:flutter/material.dart';
class CustomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomeButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.purple),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),
        ),
        ),
      ),

child:Text(text,style: TextStyle(
  fontSize: 16,
),
),
    );
  }
}
