part of styles;

const Color mainColor = Color(0xfffc6011);
const Color primaryFontColor = Color(0xff4a4b4d);
const Color secondaryFontColor = Color(0xff7c7d7e);
const Color placeholderColor = Color(0xfff2f2f2);

// http:mcg.mbitson.com/#!?mcgpalette0=%23fc6011
MaterialColor mainColorSwatch = MaterialColor(
  mainColor.value,
  const <int, Color>{
    50: Color(0xffffece2),
    100: Color(0xfffecfb8),
    200: Color(0xfffeb088),
    300: Color(0xfffd9058),
    400: Color(0xfffc7835),
    500: mainColor,
    600: Color(0xfffc580f),
    700: Color(0xfffb4e0c),
    800: Color(0xfffb440a),
    900: Color(0xfffa3305),
  },
);
