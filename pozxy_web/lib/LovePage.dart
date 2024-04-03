// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

// class AnimatedImage extends AnimatedWidget{
//   const AnimatedImage({
//     Key? key,
//     required Animation<double> animation,
//   }):super(key: key,listenable: animation);

//   @override
/////////
// }

class LovePage extends StatefulWidget {
  @override
  _LovePageState createState() => _LovePageState();
}

class _LovePageState extends State<LovePage> {
  List<String> imgList = [
    'images/love1.jpg',
    'images/love2.jpg',
    'images/love3.jpg',
    'images/love3.jpg',
    'images/love3.jpg',
    'images/love1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var MySwiperWidget = Swiper(
      layout: SwiperLayout.STACK,
      itemBuilder: (BuildContext context, int index) {
        //每次循环遍历时，将i赋值给index
        return new Image.network(
          imgList[index],
          fit: BoxFit.fill,
        );
      },
      // viewportFraction: 0.7,
      // scale: 10,
      itemWidth: 600,
      itemHeight: 400,
      itemCount: imgList.length,
      //指示器
      pagination: new SwiperPagination(),
      control: new SwiperControl(
        size: 60,
        // color:
      ),
    );

    // return MySwiperWidget;
    return Scaffold(
        body: Container(
      width: double.infinity, // 设置宽度为屏幕宽度
      height: double.infinity, // 设置高度为屏幕高度
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/1.png'), // 请将图片路径替换为你的图片路径
          fit: BoxFit.cover,
        ),
      ),
      child: MySwiperWidget,
    ));
  }

  // List<String> images = [
  //   'images/love1.jpg',
  //   'images/love2.jpg',
  //   'images/love3.jpg',
  // ];
  // int currentIndex = 0;

  // void changeImage(int newIndex) {
  //   setState(() {
  //     currentIndex = newIndex;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //         Container(
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage(images[currentIndex]),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           child: BackdropFilter(
  //             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
  //             child: Container(
  //               color: Colors.black.withOpacity(0.5),
  //             ),
  //           ),
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             GestureDetector(
  //               onTap: () {
  //                 if (currentIndex > 0) {
  //                   changeImage(currentIndex - 1);
  //                 }
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(8),
  //                 child: Icon(Icons.arrow_back, color: Colors.white),
  //               ),
  //             ),
  //             GestureDetector(
  //               onTap: () {
  //                 if (currentIndex < images.length - 1) {
  //                   changeImage(currentIndex + 1);
  //                 }
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(8),
  //                 child: Icon(Icons.arrow_forward, color: Colors.white),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
