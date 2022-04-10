import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Blogs extends StatefulWidget {
  const Blogs({ Key? key }) : super(key: key);

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(child: SafeArea(
      child:Column(
      children:[ Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin:EdgeInsets.only(top:30.h, left: 25.w),
              child: Text(
                'My Blogs',
                style: TextStyle(
                  fontSize: 28.sp,
                  color: const Color(0xff474747),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.h, left: 25.w),
              child: Text(
                'Create and post blogs',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
          ]),
          SizedBox(width: 180.h),
          Container(
            height:111.h,
            width: 70.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/blog2.png'))),
          ),
        ],
      ),
      

      Expanded(   
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         
         crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 30.h,),
            Container(
              margin: EdgeInsets.only(left:35.w,right:20.w,bottom:7.h),
            child:Text('Post date:  12/05/2022',
            style:TextStyle(fontSize:11,color: Color(0xff474747) ),
            ),
            ),
                              
           Card(
             clipBehavior: Clip.antiAlias,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             elevation:2,
              margin: EdgeInsets.only(left:30.w,right:30.w,bottom: 30.h),
             child:InkWell(
               onTap: (){},
               child: Stack(
               alignment: Alignment.center,
                 children:[Column(
                 
                 children: [
                  
                   Ink.image(image: AssetImage('assets/images/photography.jpg'),
                   height:135.h,
                   width: 375.w,
                   fit: BoxFit.fitWidth,
                   
                   ),
                    Container(
                       padding: EdgeInsets.only(left: 20.w, top:15,bottom:15),
                      child: Row(
                       
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                           children: [
                             Text(
                              'Photography Tips',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff474747),
                              ),
                                           ),
                          
                       
                   SizedBox(width: 150.h,),
                
                Icon(Icons.delete, size: 20.sp),
                 SizedBox(width: 3.h,),
                 Icon(Icons.edit,size: 20.sp),
                  SizedBox(width: 3.h,),
                 Icon(Icons.share, size: 20.sp),
                ],
                         ),
                    ),
                  
                 ],
                 
                  
                ),
               
               
                 
                    
                      
                
                ],)
                
               
               
             ),
            ),
           
            Container(
              margin: EdgeInsets.only(left:35.w,right:20.w,bottom:7.h,),
            child:Text('Post date:  12/05/2022',
            style:TextStyle(fontSize:11,color: Color(0xff474747) ),
            ),
            ),
                              
           Card(
             clipBehavior: Clip.antiAlias,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             elevation:2,
              margin: EdgeInsets.only(left:30.w,right:30.w),
             child:InkWell(
               onTap: (){},
               child: Stack(
               alignment: Alignment.center,
                 children:[Column(
                 
                 children: [
                  
                   Ink.image(image: AssetImage('assets/images/self.jpg'),
                   height:135.h,
                   width: 375.w,
                   fit: BoxFit.fitWidth,
                   
                   ),
                    Container(
                       padding: EdgeInsets.only(left: 20.w, top:15,bottom:15),
                      child: Row(
                       
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                           children: [
                             Text(
                              'Photography Tips',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff474747),
                              ),
                                           ),
                          
                       
                   SizedBox(width: 150.h,),
                
                Icon(Icons.delete, size: 20.sp),
                 SizedBox(width: 3.h,),
                 Icon(Icons.edit,size: 20.sp),
                  SizedBox(width: 3.h,),
                 Icon(Icons.share, size: 20.sp),
                ],
                         ),
                    ),
                  
                 ],
                 
                  
                ),
               
               
                 
                    
                      
                
                ],)
                
               
               
             ),
            ),
            SizedBox(height: 30.h,),
            Container(
              margin: EdgeInsets.only(left:35.w,right:20.w,bottom:7.h),
            child:Text('Post date:  12/05/2022',
            style:TextStyle(fontSize:11,color: Color(0xff474747) ),
            ),
            ),
                              
           Card(
             clipBehavior: Clip.antiAlias,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             elevation:2,
              margin: EdgeInsets.only(left:30.w,right:30.w),
             child:InkWell(
               onTap: (){},
               child: Stack(
               alignment: Alignment.center,
                 children:[Column(
                 
                 children: [
                  
                   Ink.image(image: AssetImage('assets/images/photography2.jpg'),
                   height:135.h,
                   width: 375.w,
                   fit: BoxFit.fitWidth,
                   
                   ),
                    Container(
                       padding: EdgeInsets.only(left: 20.w, top:15.h,bottom:15.w),
                      child: Row(
                       
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                           children: [
                             Text(
                              'Photography Tips',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff474747),
                              ),
                                           ),
                          
                       
                   SizedBox(width: 150.h,),
                
                Icon(Icons.delete, size: 20.sp),
                 SizedBox(width: 3.h,),
                 Icon(Icons.edit,size: 20.sp),
                  SizedBox(width: 3.h,),
                 Icon(Icons.share, size: 20.sp),
                ],
                         ),
                    ),
                  
                 ],

                  
                ),
               
               
                 
                    
                      
                
                ],)
                
               
               
             ),
            ),
              
             


            

           

              
          ]
        )


      )
      )
      ]
      ),
  
       )

    ),
      
    );
  }
}