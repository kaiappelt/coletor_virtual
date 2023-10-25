import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:awesome_onboarding_screen/pages/home/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/constants/assets_constants.dart';
import '../../core/constants/colors_constants.dart';
import '../../core/constants/style_constants.dart';
import '../../core/shared/widgets/elevated_button_widget.dart';
import '../../core/shared/widgets/input_field_widget.dart';
import '../../core/shared/widgets/outlined_button_widget.dart';
import '../register/view.dart';
import 'controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
      builder: (_) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(defMarginMedium),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          assetsColetorVirtualLogo,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    InputField(
                      headerText: DefText.email,
                    ),
                    defSizedBoxHeightMin,
                    InputField(
                      headerText: DefText.senha,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 50,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
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
                                )),
                          ),
                          Expanded(
                            flex: 50,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  DefText.esqueceuSenha,
                                  style: defLinkTitle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    child: Column(
                      children: [
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
              ],
            ),
          ),
        );
      },
    );
  }
}
