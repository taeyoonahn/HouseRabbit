Future<User?> signInWithKakao() async {
  if (await k.isKakaoTalkInstalled()) {
    try {
      final response = await k.UserApi.instance.loginWithKakaoTalk();
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');

      // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
      // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
      if (error is PlatformException && error.code == 'CANCELED') {
        print('카카오톡으로 로그인 실패 $error');
      }
      // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
      try {
        final response = await k.UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  } else {
    try {
      final response = await k.UserApi.instance.loginWithKakaoAccount();
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
    }
  }
  k.User? kakaoUser = await k.UserApi.instance.me();
  final kakaoToken = await createCustomToken({'uid': kakaoUser!.id.toString(),});
  final userCredential = await _firebaseAuth.signInWithCustomToken(kakaoToken);
  final user = userCredential.user;
  final idToken = await user!.getIdToken();

  // Optionally get FCM token for push notifications
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  String? token = await messaging.getToken();
  await _storeUserInfoInPrefs(user, token);
  String? nickname = kakaoUser.kakaoAccount!.profile!.nickname;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("displayName", nickname!);
  prefs.setString("email", kakaoUser!.kakaoAccount!.email!);
  int userCheck = await this.isRegistered(kakaoUser!.kakaoAccount!.email!);
  if(userCheck != 0){
    updateMessagingToken(userCheck, token!);
    authenticateFromServer(idToken, user!.email!);
    Get.to(HomeScreen());
  }else{
    Get.to(SignupScreen());
  }

  return user;
}

Future<String> createCustomToken(Map<String, dynamic> user) async {
  final customTokenResponse = await http
      .post(Uri.parse('$baseUrl/auth/kakao/callback'), body: user);

  final responseJson = jsonDecode(customTokenResponse.body);
  print('Received Token from server: ${responseJson['firebaseToken']}');

  return responseJson['firebaseToken'];
}