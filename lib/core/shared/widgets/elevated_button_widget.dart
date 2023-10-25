import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../constants/default_constants.dart';
import '../../constants/style_constants.dart';

class ButtonWidget extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final String text;

  const ButtonWidget({
    Key? key,
    this.color,
    this.height,
    this.width,
    this.borderRadius,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: defBlue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defRadiusLarge),
            ),
          ),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(
          text,
          style: defTextMediumWhite,
        ),
      ),
    );
  }
}
