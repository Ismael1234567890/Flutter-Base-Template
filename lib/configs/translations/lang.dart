import 'package:get/get.dart';

part 'en.dart';
part 'fr.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fr_FR': fr(),
        'en_US': en(),
      };
}
