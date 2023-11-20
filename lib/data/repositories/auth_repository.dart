import 'package:dartz/dartz.dart';
import '../../configs/injectiondepency/injection.dart';
import '/constants/api_path.dart';
import '/data/models/user.dart';
import '/services/networks/apis/api_base.dart';
import '/services/networks/apis/rest_api_reponse.dart';
import '/services/networks/apis/rest_api_service.dart';

abstract class AuthRepository {
  Future<Either<List<String>, ApiResponse>> signUp(
    String? firsname,
    String? lastname,
    String? email,
    String? phone,
    String? token,
  );
  Future<Either<List<String>, ApiResponse>> login(
      String? email, String? password);
  Future<void> signOut();
}

class AuthRepositoryImpl extends ApiBase<UserAccount>
    implements AuthRepository {
  @override
  Future<Either<List<String>, ApiResponse>> login(
      String? email, String? password) async {
    return await makeRequestApi(sl<RestApiServices>()
        .dio
        .post(ApiPath.login, data: {"username": email, "password": password}));
  }

  @override
  Future<Either<List<String>, ApiResponse>> signUp(
    String? firsname,
    String? lastname,
    String? email,
    String? phone,
    String? token,
  ) async {
    return await makeRequestApi(
        sl<RestApiServices>().dio.post(ApiPath.signup, data: {
      "firsname": firsname,
      "lastname": lastname,
      "email": email,
      "phone": phone,
      "token": token,
    }));
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
