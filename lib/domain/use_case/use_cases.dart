import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/apple_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/apple_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/google_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/google_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/kakao_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/kakao_logout_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/naver_login_use_case.dart';
import 'package:house_rabbit/domain/use_case/use_case_classification/sign_use_case/naver_logout_use_case.dart';

class UseCases {
  final NaverLoginUseCase naverLogin;
  final KakaoLoginUseCase kakaoLogin;
  final GoogleLoginUseCase googleLogin;
  final AppleLoginUseCase appleLogin;
  final NaverLogoutUseCase naverLogout;
  final KakaoLogoutUseCase kakaoLogout;
  final GoogleLogoutUseCase googleLogout;
  final AppleLogoutUseCase appleLogout;

  UseCases({
    required this.naverLogin,
    required this.kakaoLogin,
    required this.googleLogin,
    required this.appleLogin,
    required this.naverLogout,
    required this.kakaoLogout,
    required this.googleLogout,
    required this.appleLogout,
  });
}
