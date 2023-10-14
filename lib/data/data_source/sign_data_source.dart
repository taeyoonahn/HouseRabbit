import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> naverLogin() async {
  }

  Future<void> kakaoLogin() async {
  }

  Future<UserCredential> googleLogin() async {
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser
        ?.authentication;
    UserCredential userCredential = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken
        ));
    return userCredential;
  }

  Future<void> appleLogin() async {
  }

  Future<void> naverLogout() async {
  }

  Future<void> kakaoLogout() async {
  }

  Future<void> googleLogout() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  Future<void> appleLogout() async {
  }
}