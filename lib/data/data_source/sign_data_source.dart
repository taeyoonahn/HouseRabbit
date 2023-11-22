import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:house_rabbit/data/data_source/firebase_auth_remote_data_source.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';


class LoginDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final _firebaseAuthDataSouce = FirebaseAuthRemoteDataSource();

  Future<UserCredential> kakaoLogin() async {
    await kakao.UserApi.instance.loginWithKakaoAccount();
    kakao.User kakaoUser = await kakao.UserApi.instance.me();
    print(kakaoUser.id.toString());
    final kakaoCustomToken = await _firebaseAuthDataSouce.createCustomToken({
      'uid': kakaoUser.id.toString(),
    });
    UserCredential userCredential = await _auth.signInWithCustomToken(kakaoCustomToken);
    return userCredential;
  }

  Future<UserCredential> googleLogin() async {
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    UserCredential userCredential = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken)
    );
    return userCredential;
  }

  Future<UserCredential> appleLogin() async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  Future<void> kakaoLogout() async {
    await kakao.UserApi.instance.unlink();
    await _auth.signOut();
  }

  Future<void> googleLogout() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  Future<void> appleLogout() async {
    await _auth.signOut();
  }
}