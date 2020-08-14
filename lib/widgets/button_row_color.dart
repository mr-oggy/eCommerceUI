import 'package:flutter/material.dart';

class ButtonColor extends StatefulWidget {
  final Color initialColor;
  final ValueChanged<String> onChange;
  const ButtonColor({
    Key key,
    this.onChange,
    this.initialColor,
  }) : super(key: key);

  @override
  _ButtonColorState createState() => _ButtonColorState();
}

class _ButtonColorState extends State<ButtonColor> {
  Color value;

  @override
  void initState() {
    value = widget.initialColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 4,
        ),
        colorButton(Colors.red),
        Spacer(),
        colorButton(Colors.grey[400]),
        Spacer(),
        colorButton(Colors.blueGrey),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }

  colorButton(Color color) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            value = color;

            //widget.onChange(value.toString());
          });
        },
        child: Card(
          elevation: 4,
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            color: color.withOpacity(color == value ? 0.4 : 1),
            child: color == value
                ? Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  )
                : Container(),
          ),
        ),
      ),
    );
  }
}
