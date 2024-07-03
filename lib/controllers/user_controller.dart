import 'package:food_delivery/models/user_model.dart';
import 'package:get/get.dart';
import '../data/repository/user_repo.dart';
import '../models/response_model.dart';

class UserController extends GetxController {
  final UserRepo userRepo;

  UserController({
    required this.userRepo
  });

  bool _isLoading = false;
  UserModel? _userModel;

  bool get isLoading => _isLoading;
  UserModel? get userModel=>_userModel;

  Future<ResponseModel> getUserInfo() async {

    Response response = await userRepo.getUserInfo();
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      _userModel = UserModel.fromJson(response.body);
      _isLoading=false;
      responseModel = ResponseModel(true, "successfully");
      print("info get data");
      print(UserModel.fromJson(response.body));
    } else {
      responseModel = ResponseModel(false, response.statusText!);
      print("info not get data");
    }
    _isLoading = true;
    update();
    return responseModel;
  }

}