import 'package:awesome_onboarding_screen/pages/login/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';

import '../../core/constants/colors_constants.dart';
import '../../core/constants/default_constants.dart';
import '../../core/constants/default_text_constants.dart';
import '../../core/constants/style_constants.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defPaddingLarge),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: _currentPage == 0
                    ? TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(2);
                        },
                        child: Text(
                          DefText.pular,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      )
                    : Container(),
              ),
              Container(
                alignment: Alignment.center,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    OnboardingPage(
                      description: DefText.onboardingOne,
                      image: assetsOnboardingOne,
                    ),
                    OnboardingPage(
                      description: DefText.onboardingTwo,
                      image: assetsOnboardingTwo,
                    ),
                    OnboardingPage(
                      description: DefText.onboardingThree,
                      image: assetsOnboardingThree,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 150,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: _currentPage == 2
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: defOrange),
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text(DefText.comecarAgora,
                                style: defTextLargeWhite),
                          ),
                        )
                      : Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: defOrange,
                            borderRadius: BorderRadius.all(
                              Radius.circular(defRadiusCircular),
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: 6.0,
      width: 20.0,
      decoration: BoxDecoration(
        color: isActive ? defGraffiti : defGreyLigth,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String description;
  final String image;

  OnboardingPage({
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            height: 300,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 110),
        Text(
          description,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
