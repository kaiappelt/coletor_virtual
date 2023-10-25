import 'package:flutter/material.dart';
import '../../services/global.dart';
import 'colors_constants.dart';

const defTextMediumBlue = TextStyle(
  color: defBlue,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

const defTextMediumWhite = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

const defTextLargeWhite = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const defListSubTitle = TextStyle(
  color: defGreyMedium,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

const defListSubTitleMedium = TextStyle(
  color: defGreyMedium,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

const defLinkTitle = TextStyle(
  color: defBlue,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

const defListInfoOrange = TextStyle(
  color: defOrange,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

defThemeIconColor() {
  return !GlobalService.to.isDarkModel ? defGraffiti : defTextDark;
}

defThemeInputColor() {
  return !GlobalService.to.isDarkModel ? defGreyLigth : Colors.white24;
}
