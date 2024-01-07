import 'package:house_rabbit/presentation/view/discrimination_view/discrimination_view_input/discrimination_input_view.dart';
import 'package:house_rabbit/presentation/view/discrimination_view/discrimination_view_result/discrimination_result_view.dart';
import '../presentation/view/login_view/splash_view.dart';
import '../presentation/view/login_view/login_view.dart';
import '../presentation/view/home_view/home_view.dart';
import '../presentation/view/login_view/navigation_view.dart';
import '../presentation/view/user_info_view/privacy_policy_view.dart';
import '../presentation/view/user_info_view/terms_of_use_view.dart';
import '../presentation/view/user_info_view/user_info_view.dart';

final routes = {
  '/splash': (context) => const SplashView(),
  '/login': (context) => const LoginView(),
  '/navigation': (context) => const NavigationView(),
  '/home': (context) => const HomeView(),
  '/discriminationResult': (context) => const DiscriminationResultView(),
  '/discriminationInput': (context) => DiscriminationInputView(),
  '/userInfo': (context) => const UserInfoView(),
  '/termsOfUse': (context) => const TermsOfUseView(),
  '/privacyPolicy': (context) => const PrivacyPolicyView(),
};
