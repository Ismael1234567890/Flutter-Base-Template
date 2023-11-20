import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
}
