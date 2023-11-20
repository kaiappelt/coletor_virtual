import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/shared/widgets/elevated_button_widget.dart';
import '../../core/shared/widgets/input_field_widget.dart';
import '../verification-code/view.dart';
import 'controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      id: "register",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              DefText.criarConta,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(defPaddingMedium),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 250,
                      child: Center(
                          child: Column(
                        children: [
                          InputField(
                            headerText: DefText.nome,
                          ),
                          defSizedBoxHeightMin,
                          InputField(
                            headerText: DefText.email,
                          ),
                          defSizedBoxHeightMin,
                          InputField(
                            headerText: DefText.senha,
                          ),
                          defSizedBoxHeightMin,
                          InputField(
                            headerText: DefText.confirmarSenha,
                          ),
                        ],
                      )),
                    ),
                    Container(
                      height: 150,
                      child: Center(
                        child: ButtonWidget(
                          text: DefText.criarConta,
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                    const VerificationCodePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
