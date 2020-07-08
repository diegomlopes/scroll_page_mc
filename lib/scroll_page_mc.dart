
import 'package:flutter/cupertino.dart';

class ScrollPageMc extends StatefulWidget {
  
  Key key;

  ScrollPageMc({this.key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScrollPageMcState();
  
}

class _ScrollPageMcState extends State<ScrollPageMc> {

  PageController controller;

  @override
  void initState() {
    super.initState();

    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      pageSnapping: false,
      children: <Widget>[
        Image.network('https://picsum.photos/250?image=9'),
        Image.network('https://picsum.photos/250?image=9'),
        Image.network('https://picsum.photos/250?image=9'),
        Image.network('https://picsum.photos/250?image=9'),
        Image.network('https://picsum.photos/250?image=9'),
      ],
    );
  }

  void moveTo(double position) {
    controller.animateTo(position, duration: Duration(seconds: 2), curve: Curves.ease);
  }

}
