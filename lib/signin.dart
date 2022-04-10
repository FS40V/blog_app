import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/custom_widgets/custom_text.dart';
import 'package:task1/home.dart';
import 'package:task1/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
        child:ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: 35.w,
            vertical: 30.h,
          ),
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(height: 101.h, width: 193.w,
            child: Image.asset('assets/images/bb.png'),),
            SizedBox(height: 40.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login', style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff474747),
              ),
              ),
            ),
            SizedBox(height: 4.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your credentials to Login', style: TextStyle(
                fontSize: 18.sp,
                color: const Color(0xff474747),
              ),
              ),
            ),
            SizedBox(height: 21.h,),
            Align(
              alignment: Alignment.centerLeft,
                child: Text(
                  'Email', style: TextStyle(
                  fontSize: 16.h,
                  color: const Color(0xff474747),
              ),
            )),
            SizedBox(height: 6.sp,),
            Container(
                width: 300.w,
                height: 60.h,
                padding: EdgeInsets.only(left: 15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8),),
                  border: Border.all(
                      color: const Color(0xff616161),
                  ),
                ),
                child: CustomTextField(
                  customstyle: TextStyle(color: const Color(0xffBEBEBE),),
                  hintText: "xyz@gmail.com",
                  controller: emailController,
                  showSuffixIcon: false,
                )
            ),
            SizedBox(height: 18.h,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password', style: TextStyle(
                  fontSize: 16.h,
                  color: const Color(0xff474747),
                ),
                )),
            SizedBox(height: 6.sp,),
            Container(
              width: 300.w,
              height: 60.h,
              padding: EdgeInsets.only(left: 15.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8),),
                border: Border.all(
                  color: const Color(0xff616161),
                ),
              ),
              child: CustomTextField(
                customstyle: TextStyle(color: const Color(0xffBEBEBE),),
                hintText: "Password",
                controller: passwordController,
                showSuffixIcon: true,
              )
            ),
            SizedBox(height: 6.sp,),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff0D638A),
                ),
              ),
            ),
            SizedBox(height: 20.sp,),
          Container(
            width: 300.w,
            height: 60.h,
            padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 124.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8),
              ),
                color: const Color(0xff0D638A),
                border: Border.all(
                color: const Color(0xff0D638A),
              ),
            ),
            child: Center(
              child: InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Sign In',
                    style: TextStyle(
                        fontSize: 18.sp,fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ),
            SizedBox(height: 20.sp,),
            Row(
              children: [
                const Expanded(
                    child: Divider(
                      color: const Color(0xff878787),
                    )),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('OR',
                        style: TextStyle(
                            fontSize: 18.sp, color: const Color(0xff878787))),
                  ),
                ),
                const Expanded(
                    child: Divider(
                        color: const Color(0xff878787),
                    )),
              ],
            ),
            SizedBox(height: 20.sp,),
          Container(
            width: 300.w,
            height: 60.h,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 83.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8),
              ),
              border: Border.all(
                color: const Color(0xff0D638A),
              ),
            ),
            child: Center(
              child: Text('Continue with google',
                  style: TextStyle(
                      fontSize: 16.sp, color: Color(0xff0D638A))),
            ),
          ),
            SizedBox(height: 16.sp,),
            Container(
              width: 300.w,
              height: 60.h,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 83.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
                border: Border.all(
                  color: const Color(0xff0D638A),
                ),
              ),
              child: Center(
                child: Text('Continue with facebook',
                    style: TextStyle(
                        fontSize: 16.sp, color: Color(0xff0D638A))),
              ),
            ),
            SizedBox(height: 20.sp,),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have account ? ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff474747),
                    ),
                    children: [
                      TextSpan(
                          text: 'Create account',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff0D638A),
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const SignUp()));
                          }
                      ),
                    ]),
              ),
            ),
          ],
        )
      ),
    );
  }
}