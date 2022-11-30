import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.hintText,
        this.suffixIcon,
        this.controller,
        this.type, this.validator, this.obscureText})
      : super(key: key);
  final String hintText;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? type;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1,top: 1),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText?? false,
        maxLines: 1,
        key: key,
        keyboardType: type ?? TextInputType.text,
        validator: validator,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          hintText: hintText,
          suffixIcon: Icon(suffixIcon),
          hintStyle:const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
