import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task1/custom_widgets/custom_text.dart';
import 'package:task1/signin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal:40.w, vertical:40.w),
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(height:20.h),
            Align(
              alignment: Alignment.center,
              child: Column(
                
                children: [
                  Container(
                    height:49.h ,
                    width:94.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage('assets/images/bb.png'))),
                  ),
                ],
              ),
              
            ),
            SizedBox(height:49.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize:28.sp,
                  color: const Color(0xff474747),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:4.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your credentials to login',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
            SizedBox(height:42.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontSize:14.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
            Container(
               width: 300.w,
                height: 60.h,
              padding: EdgeInsets.only(left:15.h ),
              margin: EdgeInsets.only(top:6.h),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color:Colors.grey,
                ),
              ),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  labelText: 'John Doe',
                ),
              ),
            ),
            SizedBox(height:18.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize:14.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
            Container(
               width: 300.w,
                height: 60.h,
              padding: EdgeInsets.only(left:15.h ),
              margin: EdgeInsets.only(top:6.h),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                
                controller: emailController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  labelText: 'xyz@gmail.com',
                ),
              ),
            ),
           SizedBox(height: 18.h,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password', style: TextStyle(
                  fontSize: 14.h,
                  color: const Color(0xff474747),
                ),
                )),
            SizedBox(height: 6.sp,),
            Container(
               width: 300.w,
                height: 60.h,
             padding: EdgeInsets.only(left:15.h ),
              margin: EdgeInsets.only(top:6.h),
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8),),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: CustomTextField(
                customstyle: TextStyle(color: Colors.grey,),
                hintText: "********",
                controller: passwordController,
                showSuffixIcon: true,
              )
            ),
            SizedBox(height: 6.sp,),
            
            
            SizedBox(height:20.h),
            Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Icon(Icons.check_box_outline_blank),
                SizedBox(width:10.w),
                RichText(
                text: TextSpan(
                    text: 'I agree to the ',
                    style: TextStyle(
                      fontSize:16.h,
                      color: const Color(0xff474747),
                     
                    ),
                    children: [
                      TextSpan(
                          text: 'Terms and conditions',
                          style: TextStyle(
                            fontSize:16.h,
                            color: const Color(0xff0D638A),
                           
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignIn()));
                            }),
                    ]),
              ),
              ]
            ),
             
            
            Container(
              width: 300.w,
                height: 60.h,
              padding: EdgeInsets.only(left: 50.w,right:50.w),
              margin: EdgeInsets.only(top:30.h),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: const Color(0xff0D638A),
                  ),
              child: Center(
                child: InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  },
                child: Text('Create Account',
                    style: TextStyle(
                        fontSize:15.sp,fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              ),
            ),
            
            SizedBox(height:40.h),
           
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontSize:16.h,
                      color: const Color(0xff474747),
                     
                    ),
                    children: [
                      TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            fontSize:16.h,
                            color: const Color(0xff0D638A),
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignIn()));
                            }),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}