import 'package:awesome_onboarding_screen/core/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';
import '../../core/constants/default_constants.dart';
import '../../core/constants/default_text_constants.dart';
import '../../core/constants/style_constants.dart';
import '../../core/shared/widgets/elevated_button_widget.dart';
import '../../core/shared/widgets/input_field_widget.dart';
import '../../core/shared/widgets/outlined_button_widget.dart';
import '../home/view.dart';
import '../register/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  assetsOnboardingOne, // Substitua pelo caminho da sua imagem de logo
                  height: 200,
                ),
                SizedBox(height: 30),
                InputField(
                  headerText: DefText.email,
                ),
                defSizedBoxHeightMin,
                InputField(
                  headerText: DefText.senha,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 35,
                          height: 25,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Switch(
                              value: isSwitched,
                              activeColor: defOrange,
                              inactiveThumbColor: defGreyMedium,
                              inactiveTrackColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        defSizedBoxWidthMin,
                        Text(
                          DefText.lembrar,
                          style: defListSubTitle,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        DefText.esqueceuSenha,
                        style: defLinkTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                OutlinedButtonWidget(
                  text: DefText.cadastrar,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                ),
                defSizedBoxHeightMedium,
                ButtonWidget(
                  text: DefText.entrar,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
