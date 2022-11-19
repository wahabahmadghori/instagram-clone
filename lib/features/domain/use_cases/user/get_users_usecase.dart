import 'package:intagram_clone/features/domain/entities/user/user_entity.dart';
import 'package:intagram_clone/features/domain/repositories/firebase_repository.dart';

class GetUsersUseCase {
  final FirebaseRepository repository;

  GetUsersUseCase(this.repository);

  Stream<List<UserEntity>> call(UserEntity user) {
    return repository.getUsers(user);
  }
}
