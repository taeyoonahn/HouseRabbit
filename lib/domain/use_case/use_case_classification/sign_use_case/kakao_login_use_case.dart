import '../../../domain_repository/login_domain_repository.dart';

class KakaoLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  KakaoLoginUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.kakaoLogin();
  }
}