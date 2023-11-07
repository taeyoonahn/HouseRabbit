import 'package:house_rabbit/data/data_repository/sign_data_repository.dart';
import 'package:house_rabbit/data/data_source/sign_data_source.dart';
import 'package:house_rabbit/domain/domain_repository/login_domain_repository.dart';
import 'package:house_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:house_rabbit/presentation/view_model/bottom_navigation_bar_view_model.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/apple_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/apple_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/google_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/google_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/kakao_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/kakao_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_cases.dart';

Future<List<SingleChildWidget>> providerDi() async {
  LoginDataSource loginDataSource = LoginDataSource();

  LoginDomainRepository loginDomainRepository = LoginDataRepository(loginDataSource);

  UseCases useCases = UseCases(
    kakaoLogin: KakaoLoginUseCase(loginDomainRepository),
    appleLogin: AppleLoginUseCase(loginDomainRepository),
    googleLogin: GoogleLoginUseCase(loginDomainRepository),
    kakaoLogout: KakaoLogoutUseCase(loginDomainRepository),
    appleLogout: AppleLogoutUseCase(loginDomainRepository),
    googleLogout: GoogleLogoutUseCase(loginDomainRepository),
  );

  LoginViewModel loginViewModel = LoginViewModel(useCases);
  BottomNavigationBarViewModel bottomNavigationBarViewModel = BottomNavigationBarViewModel();
  AdMobViewModel adMobViewModel = AdMobViewModel();

  return [
    ChangeNotifierProvider(create: (_) => loginViewModel),
    ChangeNotifierProvider(create: (_) => bottomNavigationBarViewModel),
    ChangeNotifierProvider(create: (_) => adMobViewModel),
  ];
}
