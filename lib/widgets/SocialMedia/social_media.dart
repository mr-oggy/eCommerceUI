import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SocialMedia extends StatelessWidget {
  //const SocialMedia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue[400],
          ),
          child: IconButton(
            icon: Icon(
              EvaIcons.twitter,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
        CustomTag(value: 1424),
        Spacer(),
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue[800],
          ),
          child: IconButton(
            icon: Icon(
              EvaIcons.facebook,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
        CustomTag(value: 1424),
        Spacer(),
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink[500],
          ),
          child: IconButton(
            icon: Icon(
              MdiIcons.pinterest,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
        CustomTag(value: 1424),
        Spacer(),
      ],
    );
  }
}

class CustomTag extends StatelessWidget {
  final int value;
  const CustomTag({
    Key key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          '$value',
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
      ),
      clipper: ClipAngle(),
    );
  }
}

class ClipAngle extends CustomClipper<Path> {
  final double x = 10.0;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(x, x);
    path.lineTo(x, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
