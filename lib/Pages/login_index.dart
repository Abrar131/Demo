import 'package:file1/Pages/login.dart';
import 'package:file1/Pages/regestration.dart';
import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';

class LoginIndex extends StatelessWidget {
  const LoginIndex({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: EdgeInsets.only(
          top: h / 5.5,
        ),
        child: Column(
          children: [
            const Text("サカオク",
                style: TextStyle(color: Colors.black, fontSize: 31)),
            const Spacer(),
            CustomButton(tittle: 'メールアドレスで登録する',
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Registration()),
            ),),
            const SizedBox(height: 14),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
                //  Get.toNamed(Routes.LOGIN2);
              },
              child: const Text("ログインはこちら",
                  style: TextStyle(color: Color(0xFF2A95B5), fontSize: 12)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
