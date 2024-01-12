import 'package:flutter/material.dart';

// class AnimatedImage extends AnimatedWidget{
//   const AnimatedImage({
//     Key? key,
//     required Animation<double> animation,
//   }):super(key: key,listenable: animation);

//   @override
//
// }

class LovePage extends StatefulWidget {
  @override
  _LovePageState createState() => _LovePageState();
}

class _LovePageState extends State<LovePage> {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("images/23.png"));
  }
}
