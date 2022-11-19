import 'package:intagram_clone/features/domain/entities/user/user_entity.dart';
import 'package:intagram_clone/features/domain/repositories/firebase_repository.dart';

class GetSingleUserUseCase {
  final FirebaseRepository repository;

  GetSingleUserUseCase(this.repository);
  Stream<List<UserEntity>> call(String uid) {
    return repository.getSingleUser(uid);
  }
}
