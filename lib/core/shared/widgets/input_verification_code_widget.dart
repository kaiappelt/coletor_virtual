import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../constants/default_constants.dart';

// ignore: must_be_immutable
class InputVerificationCode extends StatelessWidget {
  String teste;

  InputVerificationCode({
    Key? key,
    required this.teste,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defPadding),
      child: Container(
        height: 64.0,
        width: 56.0,
        decoration: BoxDecoration(
          color: defGreyLigthOpacity,
          borderRadius: BorderRadius.circular(defRadiusMedium),
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextField(
            textAlign: TextAlign.center,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
