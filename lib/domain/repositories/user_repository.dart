import '../../domain/entities/user.dart';

abstract class UserRepository {
  Future<void> addUser(User user);
}
