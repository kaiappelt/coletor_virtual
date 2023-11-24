import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:awesome_onboarding_screen/pages/draft/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'controller.dart';

class ScannerCollectionDefaultPage extends StatelessWidget {
  const ScannerCollectionDefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScannerCollectionDefaultController>(
      init: ScannerCollectionDefaultController(),
      id: "scanner-collection-default",
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text(DefText.escanearProduto),
            ),
            body: BarcodeScannerScreen()
            // SingleChildScrollView(
            //   physics: const BouncingScrollPhysics(),
            //   child: Padding(
            //     padding: const EdgeInsets.all(defPaddingMedium),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [Text(DefText.escanearProduto)],
            //     ),
            //   ),
            // ),
            );
      },
    );
  }
}
