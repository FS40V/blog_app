import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: Size(414, 896),

     
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        
        builder: (context, widget) {
         
          ScreenUtil.setContext(context);
          return MediaQuery(
          
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        theme: ThemeData(
          textTheme: TextTheme(
             
              button: TextStyle(fontSize: 45.sp)),
        ),
        home: SignIn(),
      ),
    );
  }
}
