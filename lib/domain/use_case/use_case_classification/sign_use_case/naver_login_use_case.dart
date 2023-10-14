import 'package:house_rabbit/domain/domain_repository/login_domain_repository.dart';

class NaverLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  NaverLoginUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.naverLogin();
  }
}