import '../../../domain_repository/login_domain_repository.dart';

class AppleLoginUseCase {
  final LoginDomainRepository loginDomainRepository;
  AppleLoginUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.appleLogin();
  }
}