import 'package:intagram_clone/features/domain/entities/user/user_entity.dart';
import 'package:intagram_clone/features/domain/repositories/firebase_repository.dart';

class SignUpUserUseCase {
  final FirebaseRepository repository;

  SignUpUserUseCase(this.repository);

  Future<void> call(UserEntity userEntity) {
    return repository.signUpUser(userEntity);
  }
}
