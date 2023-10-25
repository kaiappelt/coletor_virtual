import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/style_constants.dart';
import 'package:awesome_onboarding_screen/core/shared/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class CollectList extends StatelessWidget {
  final Widget leftIcon;
  final String titulo;
  final String subTitulo;
  final String? moreInformation;
  final bool moreInformationBool;

  const CollectList({
    Key? key,
    required this.leftIcon,
    required this.titulo,
    required this.subTitulo,
    this.moreInformation,
    required this.moreInformationBool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 55,
                  child: const Icon(
                    Icons.qr_code_scanner,
                    size: 40,
                    color: defBlue,
                  ),
                )
              ],
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titulo,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                moreInformationBool == true
                    ? SizedBox(
                        height: 0,
                      )
                    : SizedBox(
                        height: 10,
                      ),
                Text(
                  subTitulo,
                  style: defListSubTitle,
                ),
                moreInformationBool == true
                    ? Text(
                        moreInformation ?? '',
                        style: defListInfoOrange,
                      )
                    : SizedBox(
                        height: 0,
                      )
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leftIcon,
              ],
            )
          ],
        ),
      ),
    );
  }
}
