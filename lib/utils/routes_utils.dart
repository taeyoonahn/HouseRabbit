import '../../presentation/view/splash_view.dart';
import '../presentation/view/login_view.dart';
import '../presentation/view/home_view.dart';
import '../presentation/view/navigation_view.dart';

final routes = {
  '/splash': (context) => const SplashView(),
  '/login': (context) => const LoginView(),
  '/navigation': (context) => const NavigationView(),
  '/home': (context) => const HomeView(),
  // '/house_info': (context) => const HouseInfoView(),
  // '/discrimination': (context) => const DiscriminationView(),
  // '/discrimination_result': (context) => const DiscriminationResultView(),
  // '/check_list': (context) => const CheckListView(),
  // '/mem_list': (context) => const MemoListView(),
  // '/memo': (context) => const MemoView(),
  // '/user_info': (context) => const UserInfoView(),
  // '/payment': (context) => const PaymentView(),
};
