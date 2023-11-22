import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/widget/login/sign_up_button_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF2962FF),
                  Color(0xff281537),
                ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  Row(
                    children: [
                      const SizedBox(width: 12,),
                      IconButton(
                        onPressed: ()=>Navigator.pushNamed(context,'/login',),
                        icon: const Icon(Icons.arrow_back_ios_outlined,),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 30,),
                      Image.asset(
                        'assets/images/title_main.png',
                        height: 60.0,
                        width: 130.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180.0,),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)), color: Colors.white,),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80,),
                      const TextField(
                        decoration: InputDecoration(suffixIcon: Icon(Icons.mail_outline_outlined, color: Colors.grey,),
                            label: Text('이메일을 입력해주세요',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87,),)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const TextField(decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                          label: Text('비밀번호를 입력해주세요',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87,),)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const TextField(decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('비밀번호를 다시 입력해주세요',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87,),)
                        ),
                      ),
                      const SizedBox(height: 50,),
                      const SignUpButtonWidget(),
                      const SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("회원가입을 진행할 경우, ",style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                            TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey,),),
                                ),
                                child: Text('서비스 약관', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                              ),
                            ),
                            const Text(" 및 ",style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                            TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey,),),
                                ),
                                child: Text('개인정보 처리방침', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                              ),
                            ),
                            const Text("에 동의한 것으로 간주합니다.",style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
