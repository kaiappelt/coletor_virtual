import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'controller.dart';

class ServerSoftwareInfoPage extends StatelessWidget {
  const ServerSoftwareInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServerSoftwareInfoController>(
      init: ServerSoftwareInfoController(),
      id: "server-software-info",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(DefText.sobreServerSoftware),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(defPaddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [Text(DefText.sobreServerSoftware)],
              ),
            ),
          ),
        );
      },
    );
  }
}
