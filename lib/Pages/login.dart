import 'package:file1/Helper/service.dart';
import 'package:file1/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 17),
            commonTextFormField('ユーザーID'),
            const SizedBox(height: 1),
            commonTextFormField('パスワード'),

            const SizedBox(
              height: 19,
            ),
             CustomButton(tittle: "メールアドレスでログインする",onTap: (){},),
            const SizedBox(
              height: 14,
            ),
            const Text("ユーザーID、パスワードをお忘れの方",
                style: TextStyle(color: Color(0xFF2A95B5), fontSize: 12)),
            const SizedBox(
              height: 14,
            ),
            divider(),
            const SizedBox(
              height: 14,
            ),
            const CommonButton(
              textColour: Colors.black,
              tittle: "会員登録はこちら",
              backgroundColour: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  ///Divider with name
  Padding divider() {
    return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(children:const [
              Expanded(
                  child: Divider(
                color: Colors.black54,
                thickness: 1,
              )),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text("もしくは",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ),
              Expanded(
                  child: Divider(
                color: Colors.black54,
                thickness: 1,
              )),
            ]),
          );
  }


  ///common used textForm field
  TextFormField commonTextFormField(String tittle) {
    return TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              border:const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              hintText: tittle,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          );
  }


  ///Appbar for the page
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('ログイン',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700)),
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () =>Navigator.pop(context),
      ),
    );
  }
}
