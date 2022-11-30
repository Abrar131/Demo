import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
 const  CustomButton({Key? key, required this.tittle, this.icons, this.backGroundColor, required this.onTap})
      : super(key: key);
  final String tittle;
  final IconData? icons;
  final Color? backGroundColor;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width,
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: backGroundColor ?? Colors.red[400],
          border: Border.all(
              width: 0.3,
              color: backGroundColor != null ? Colors.black54 : Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icons, color: Colors.white70.withOpacity(0.6)),
            const SizedBox(width: 10),
            Text(tittle,
                style: TextStyle(
                    color: backGroundColor != null ? Colors.black87 : Colors.white70,
                    fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
