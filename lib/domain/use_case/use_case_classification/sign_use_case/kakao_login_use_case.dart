import 'package:firebase_auth/firebase_auth.dart';
import '../../../domain_repository/login_domain_repository.dart';

class KakaoLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  KakaoLoginUseCase(this.loginDomainRepository);

  Future<UserCredential> call() async{
    UserCredential userCredential = await loginDomainRepository.kakaoLogin();
    return userCredential;
  }
}