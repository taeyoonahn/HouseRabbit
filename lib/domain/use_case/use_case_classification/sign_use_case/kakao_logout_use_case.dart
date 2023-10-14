import '../../../domain_repository/login_domain_repository.dart';

class KakaoLogoutUseCase {
  final LoginDomainRepository loginDomainRepository;
  KakaoLogoutUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.kakaoLogin();
  }
}