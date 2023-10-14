import 'package:house_rabbit/domain/domain_repository/login_domain_repository.dart';

class NaverLogoutUseCase {
  final LoginDomainRepository loginDomainRepository;
  NaverLogoutUseCase(this.loginDomainRepository);

  Future<void> call() async{
    await loginDomainRepository.naverLogout();
  }
}