import 'package:file1/Widgets/costum_switch.dart';
import 'package:file1/Widgets/custom_button.dart';
import 'package:file1/Widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _emailId = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _day = TextEditingController();
  final TextEditingController _month = TextEditingController();
  final TextEditingController _year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              commonText('メールアドレス', '（必須）'),
              CustomTextField(
                controller: _emailId,
                hintText: 'example@email.com',
                type: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("Please Enter Your Email");
                  }
                },
              ),
              commonText('パスワード', '（必須）'),
              CustomTextField(
                  obscureText: true,
                  controller: _password,
                  hintText: '',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Password is required for login");
                    }
                  }),
              commonText('氏名', '（必須）'),
              CustomTextField(
                hintText: '田中　太郎',
                controller: _name,
              ),
              commonText('ニックネーム', '（必須）'),
              CustomTextField(
                hintText: 'hello',
                controller: _surname,
              ),
              commonText('電話番号', '（必須）'),
              CustomTextField(
                controller: _contact,
                hintText: '080 11111222221111',
                type: TextInputType.phone,
              ),
              commonText('生年月日', '（必須）'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text('ghgg',
                        style:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ],
              ),
              CustomTextField(
                hintText: '',
                suffixIcon: Icons.arrow_drop_down,
                controller: _year,
              ),
              textBoxes(),
              commonText('性別', '（必須）'),
              customRadioButton(),
              rowWithSwitch(size),
              const SizedBox(
                height: 19,
              ),
              CustomButton(tittle: '登録する',onTap: (){},),
              const SizedBox(
                height: 39,
              ),
            ],
          ),
        ),
      ),
    );
  }


  /// contains 2 text and 1 switch
  Container rowWithSwitch(Size size) {
    return Container(
              width: size.width,
              padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.3, color: Colors.black54),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Text('利用規約',
                          style:
                              TextStyle(color: Colors.blue, fontSize: 13)),
                      Text('に同意する',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 13)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      CustomSwitch(
                        activeColor: Colors.redAccent,
                        value: true,//controller.status.value,
                        onChanged: (valuee) {
                          // Obx(() => InkWell(
                          //   onTap: () {
                          //    // controller.status.value = valuee;
                          //   },
                          // ));
                        }, key: null,
                      ),
                    ],
                  ),
                ],
              ),
            );
  }

  /// contains 2 box to enter details
  Padding textBoxes() {
    return Padding(
              padding: const EdgeInsets.only(top: 15, left: 14, right: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('月',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15)),
                        ),
                        CustomTextField(
                          hintText: '',
                          suffixIcon: Icons.arrow_drop_down,
                          controller: _month,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 13),
                  Flexible(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('日',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15))),

                        CustomTextField(
                            hintText: '',
                            suffixIcon: Icons.arrow_drop_down,
                            controller: _day),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  ///page app bar
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('会員登録',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700)),
      centerTitle: true,
      elevation: 0,
      // automaticallyImplyLeading: false,
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios),
        color:Colors.black,onPressed: ()=>Navigator.pop(context),),
      shape: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.1), width: 1)),
    );
  }


  /// Customised radio buttons
  Widget customRadioButton() {
    return Column(
      children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio(
            value: 1,
            groupValue: const Text("hello"),
             onChanged: (val) {
            //   controller.id.value = 1;
            //   controller.radioButtonItem = 'One'.obs;
            },
          ),
          const Text(
            '男性',
            style: TextStyle(fontSize: 17.0),
          ),
          Radio(
            value: 2,
            groupValue: const Text("hello"),
            onChanged: (val) {
            },
          ),
          const Text(
            '女性',
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          Radio(
            value: 3,
            groupValue: const Text("hello"),
            onChanged: (val) {
            },
          ),
         const  Text(
            '該当しない',
            style: TextStyle(fontSize: 17.0),
          ),

          // controller.id.value == 1? _gen.text = '男性' :controller.id.value ==2 _gen =''
        ],
      ),
      ],
    );
  }

  ///Common text used in page
  Widget commonText(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 9, bottom: 8),
      child: Row(
        children: [
          Text(text1,
              style: const TextStyle(color: Colors.black, fontSize: 15)),
          Text(text2,
              style:TextStyle(color: Colors.red[800], fontSize: 15)),
        ],
      ),
    );
  }


}
