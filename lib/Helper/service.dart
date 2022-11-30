import 'package:file1/Pages/regestration.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,  required this.backgroundColour, required this.tittle, required this.textColour});
  final Color textColour;
  final Color backgroundColour;
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(21, 0, 21, 0),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Registration()),
        ),
        child: Container(
          width: double.maxFinite,
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColour,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(tittle,style: TextStyle(color: textColour),),
          ),
        ),
      ),
    );
  }
}
