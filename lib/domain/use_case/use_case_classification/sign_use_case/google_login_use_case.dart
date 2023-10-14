import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rabbit/domain/domain_repository/login_domain_repository.dart';

class GoogleLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  GoogleLoginUseCase(this.loginDomainRepository);

  Future<UserCredential> call() async{
    UserCredential userCredential = await loginDomainRepository.googleLogin();
    return userCredential;
  }
}