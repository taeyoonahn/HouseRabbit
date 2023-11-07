import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain_repository/login_domain_repository.dart';

class AppleLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  AppleLoginUseCase(this.loginDomainRepository);

  Future<UserCredential> call() async{
    UserCredential userCredential = await loginDomainRepository.appleLogin();
    return userCredential;
  }
}