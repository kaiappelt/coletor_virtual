import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:awesome_onboarding_screen/pages/login/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/constants/colors_constants.dart';
import '../../core/constants/style_constants.dart';
import '../../core/shared/widgets/elevated_button_widget.dart';
import '../../core/shared/widgets/input_verification_code_widget.dart';
import '../../core/shared/widgets/outlined_button_widget.dart';
import '../home/view.dart';
import 'controller.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerificationCodeController>(
      init: VerificationCodeController(),
      id: "verification-code",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(DefText.codigoVerificacao),
          ),
          body: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child: Column(children: [
                      Container(
                        height: 90,
                        margin: EdgeInsets.only(
                          top: defMarginLarge,
                          bottom: defMarginLarge * 1.3,
                        ),
                        color: defOrangeOpacity,
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '01:09',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        DefText.digiteCodigoVerificacao,
                        style: defListSubTitleMedium,
                      ),
                      defSizedBoxHeightMin,
                      Text(
                        'Teste@gmail.com',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      defSizedBoxHeightLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputVerificationCode(
                            teste: '0',
                          ),
                          InputVerificationCode(
                            teste: '0',
                          ),
                          InputVerificationCode(
                            teste: '0',
                          ),
                          InputVerificationCode(
                            teste: '0',
                          ),
                        ],
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(defPaddingMedium),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        child: Column(
                          children: [
                            OutlinedButtonWidget(
                              text: DefText.reenviarCodigoVerificacao,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                            ),
                            defSizedBoxHeightMedium,
                            ButtonWidget(
                              text: DefText.realizarVerificacao,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
