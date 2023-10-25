import 'package:awesome_onboarding_screen/core/constants/style_constants.dart';
import 'package:awesome_onboarding_screen/core/shared/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class CollectCards extends StatelessWidget {
  final Widget leftIcon;
  final String titulo;
  final String subTitulo;
  final String? moreInformation;
  final bool moreInformationBool;

  const CollectCards({
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
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                ),
                Text(
                  titulo,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
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
                    // collect[index].subHeading,
                    style: defListInfoOrange,
                  )
                : SizedBox(
                    height: 0,
                  )
          ],
        ),
      ),
    );
  }
}
