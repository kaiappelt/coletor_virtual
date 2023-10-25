import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'controller.dart';

class VirtualCollectInfoPage extends StatelessWidget {
  const VirtualCollectInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VirtualCollectInfoController>(
      init: VirtualCollectInfoController(),
      id: "virtual-collect-info",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(DefText.sobreColetorVirtual),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(defPaddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [Text(DefText.sobreColetorVirtual)],
              ),
            ),
          ),
        );
      },
    );
  }
}
