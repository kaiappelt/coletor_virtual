import 'package:flutter/material.dart';

import '../../constants/default_constants.dart';
import '../../constants/style_constants.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  String headerText;
  InputField({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: defMargin, left: defMargin),
          child: Text(
            headerText,
            style: defListSubTitle,
          ),
        ),
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: defThemeInputColor(),
              ),
              borderRadius: BorderRadius.circular(defRadiusLarge),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            )),
      ],
    );
  }
}
