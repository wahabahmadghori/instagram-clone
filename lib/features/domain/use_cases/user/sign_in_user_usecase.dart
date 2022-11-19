import 'package:intagram_clone/features/domain/entities/user/user_entity.dart';
import 'package:intagram_clone/features/domain/repositories/firebase_repository.dart';

class SignInUserUseCase {
  final FirebaseRepository repository;

  SignInUserUseCase(this.repository);

  Future<void> call(UserEntity user) {
    return repository.signInUser(user);
  }
}
