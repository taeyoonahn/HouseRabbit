import '../../../domain_repository/login_domain_repository.dart';

class GoogleLogoutUseCase {
  final LoginDomainRepository loginDomainRepository;
  GoogleLogoutUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.googleLogout();
  }
}