import '../../../domain_repository/login_domain_repository.dart';

class AppleLogoutUseCase {
  final LoginDomainRepository loginDomainRepository;
  AppleLogoutUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.appleLogout();
  }
}