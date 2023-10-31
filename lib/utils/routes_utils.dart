import 'package:house_rabbit/presentation/view/find_password_view.dart';
import 'package:house_rabbit/presentation/view/sign_up_view.dart';
import '../../presentation/view/splash_view.dart';
import '../presentation/view/login_view.dart';
import '../presentation/view/home_view.dart';
import '../presentation/view/navigation_view.dart';
import '../presentation/view/user_info_view.dart';

final routes = {
  '/splash': (context) => const SplashView(),
  '/login': (context) => const LoginView(),
  '/signUp': (context) => const SignUpView(),
  '/findPassword': (context) => const FindPasswordView(),
  '/navigation': (context) => const NavigationView(),
  '/home': (context) => HomeView(),
  // '/houseInfo': (context) => const HouseInfoView(),
  // '/discrimination': (context) => const DiscriminationView(),
  // '/discriminationResult': (context) => const DiscriminationResultView(),
  // '/checkList': (context) => const CheckListView(),
  // '/memoList': (context) => const MemoListView(),
  // '/memo': (context) => const MemoView(),
  '/userInfo': (context) => const UserInfoView(),
  // '/payment': (context) => const PaymentView(),
};
