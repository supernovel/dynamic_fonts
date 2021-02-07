import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;

import 'dynamic_fonts_family_with_variant.dart';

/// Describes a DynamicFonts.
///
/// This class mostly serves as a simple way to keep the connected font
/// information together.
class DynamicFontsDescriptor {
  const DynamicFontsDescriptor({
    @required this.familyWithVariant,
    @required this.file,
  })  : assert(familyWithVariant != null),
        assert(file != null);

  final DynamicFontsFamilyWithVariant familyWithVariant;
  final DynamicFontsFile file;
}

/// Describes a font file as it is _expected_ to be received from the server.
class DynamicFontsFile {
  DynamicFontsFile(this.url);

  final String url;

  String get ext =>
      (path.extension(Uri.tryParse(this.url).path) ?? '').replaceFirst('.', '');
}
