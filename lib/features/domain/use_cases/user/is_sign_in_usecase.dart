import 'package:intagram_clone/features/domain/repositories/firebase_repository.dart';

class IsSignInUseCase {
  final FirebaseRepository repository;

  IsSignInUseCase(this.repository);

  Future<bool> call() {
    return repository.isSignIn();
  }
}
