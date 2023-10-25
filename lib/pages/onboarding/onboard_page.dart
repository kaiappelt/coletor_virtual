import 'package:awesome_onboarding_screen/core/constants/assets_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../core/constants/colors_constants.dart';
import '../../core/constants/default_text_constants.dart';
import '../login/view.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: DefText.comecarAgora,
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defRadiusCircular),
        ),
        backgroundColor: defOrange,
      ),
      skipTextButton: Text(
        DefText.pular,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      controllerColor: defGreyMedium,
      totalPage: 3,
      headerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pageBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      background: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              assetsOnboardingOne,
              height: 300,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              assetsOnboardingTwo,
              height: 400,
              alignment: Alignment.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              assetsOnboardingThree,
              height: 330,
            ),
          ),
        ),
      ],
      speed: 1.9,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: defPaddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 450,
              ),
              Text(
                DefText.onboardingOne,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: defPaddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 450,
              ),
              Text(
                DefText.onboardingTwo,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: defPaddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 450,
              ),
              Text(
                DefText.onboardingThree,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
