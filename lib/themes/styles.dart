import '/constants/app_export.dart';

class AppTextStyle {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle mediumtitleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static const TextStyle smalltitleStyle = TextStyle(
    fontSize: 12.0,
    color: Colors.black,
  );
  // Ajoutez d'autres styles de texte si nécessaire
}

// APP decoration
class AppDecoration {
  static BoxDecoration get exampleBoxDecoration => const BoxDecoration();
  // Ajoutez d'autres BoxDecoration si nécessaire
}

// Border Radius
class BorderRadiusStyle {
  static BorderRadius roundedBorder4 = BorderRadius.circular(4.r);
  static BorderRadius roundedBorder6 = BorderRadius.circular(6.r);
  static BorderRadius roundedBorder8 = BorderRadius.circular(8.r);
  static BorderRadius roundedBorder12 = BorderRadius.circular(12.r);
  static BorderRadius roundedBorder14 = BorderRadius.circular(14.r);
  static BorderRadius roundedBorder16 = BorderRadius.circular(16.r);
  static BorderRadius roundedBorder18 = BorderRadius.circular(18.r);
  static BorderRadius circleBorder20 = BorderRadius.circular(20.r);
  static BorderRadius circleBorder24 = BorderRadius.circular(24.r);
  static BorderRadius circleBorder30 = BorderRadius.circular(30.r);
  static BorderRadius circleBorder50 = BorderRadius.circular(50.r);
  static BorderRadius circleBorder60 = BorderRadius.circular(60.r);
  static BorderRadius circleBorder74 = BorderRadius.circular(74.r);
  // Ajoutez d'autres BorderRadius si nécessaire
}
