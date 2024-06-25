import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  
  Future<void> logout();

  Stream<MyUser?> get user;

  Future<void> signIn(String email, String password);

  Future<void> setUserData(MyUser user);

  Future<MyUser> signUp(MyUser user, String password);

}