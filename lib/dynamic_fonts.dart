import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'fonts/dynamic_font_base.dart';
import 'fonts/dynamic_fonts_descriptor.dart';
import 'fonts/dynamic_fonts_variant.dart';


/// Lazy load fonts
class DynamicFonts {
  /// Applies the Noto Sans KR font family from Google Fonts to the
  /// given [textStyle].
  ///
  /// See:
  ///  * https://fonts.google.com/specimen/Noto+Sans+KR
  static TextStyle notoSansKR({
    TextStyle textStyle,
    Color color,
    Color backgroundColor,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    double letterSpacing,
    double wordSpacing,
    TextBaseline textBaseline,
    double height,
    Locale locale,
    Paint foreground,
    Paint background,
    List<ui.Shadow> shadows,
    List<ui.FontFeature> fontFeatures,
    TextDecoration decoration,
    Color decorationColor,
    TextDecorationStyle decorationStyle,
    double decorationThickness,
  }) {
    final fonts = <DynamicFontsVariant, DynamicFontsFile>{
      DynamicFontsVariant(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ): DynamicFontsFile(
        'http://fonts.gstatic.com/s/notosanskr/v13/Pby7FmXiEBPT4ITbgNA5CgmOelzI7rgQsWYrzw.otf',
      ),
      DynamicFontsVariant(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ): DynamicFontsFile(
        'http://fonts.gstatic.com/s/notosanskr/v13/PbykFmXiEBPT4ITbgNA5Cgm20HTs4JMMuA.otf',
      ),
      DynamicFontsVariant(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ): DynamicFontsFile(
        'http://fonts.gstatic.com/s/notosanskr/v13/Pby7FmXiEBPT4ITbgNA5CgmOIl3I7rgQsWYrzw.otf',
      ),
      DynamicFontsVariant(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ): DynamicFontsFile(
        'http://fonts.gstatic.com/s/notosanskr/v13/Pby7FmXiEBPT4ITbgNA5CgmOalvI7rgQsWYrzw.otf',
      ),
      DynamicFontsVariant(
          fontWeight: FontWeight.w900,
          fontStyle:
              FontStyle.normal): DynamicFontsFile(
          'http://fonts.gstatic.com/s/notosanskr/v13/Pby7FmXiEBPT4ITbgNA5CgmOUlnI7rgQsWYrzw.otf')
    };

    return dynamicFontsTextStyle(
      textStyle: textStyle,
      fontFamily: 'NotoSansKR',
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      fonts: fonts,
    );
  }

  /// Applies the Noto Sans KR font family from Google Fonts to every
  /// [TextStyle] in the given [textTheme].
  ///
  /// See:
  ///  * https://fonts.google.com/specimen/Noto+Sans+KR
  static TextTheme notoSansKRTextTheme([TextTheme textTheme]) {
    textTheme ??= ThemeData.light().textTheme;
    return TextTheme(
      headline1: DynamicFonts.notoSansKR(textStyle: textTheme?.headline1),
      headline2: DynamicFonts.notoSansKR(textStyle: textTheme?.headline2),
      headline3: DynamicFonts.notoSansKR(textStyle: textTheme?.headline3),
      headline4: DynamicFonts.notoSansKR(textStyle: textTheme?.headline4),
      headline5: DynamicFonts.notoSansKR(textStyle: textTheme?.headline5),
      headline6: DynamicFonts.notoSansKR(textStyle: textTheme?.headline6),
      subtitle1: DynamicFonts.notoSansKR(textStyle: textTheme?.subtitle1),
      subtitle2: DynamicFonts.notoSansKR(textStyle: textTheme?.subtitle2),
      bodyText1: DynamicFonts.notoSansKR(textStyle: textTheme?.bodyText1),
      bodyText2: DynamicFonts.notoSansKR(textStyle: textTheme?.bodyText2),
      caption: DynamicFonts.notoSansKR(textStyle: textTheme?.caption),
      button: DynamicFonts.notoSansKR(textStyle: textTheme?.button),
      overline: DynamicFonts.notoSansKR(textStyle: textTheme?.overline),
    );
  }
}
