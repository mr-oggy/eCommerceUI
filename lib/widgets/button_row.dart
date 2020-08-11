import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {
  final ValueChanged<String> onChange;
  const ButtonRow({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  String value = '6';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 4,
        ),
        button('6'),
        Spacer(),
        button('8'),
        Spacer(),
        button('10'),
        Spacer(),
        button('12'),
        Spacer(),
        button('14'),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }

  button(String label) {
    return Container(
      height: 50,
      width: 50,
      child: RaisedButton(
        onPressed: () {
          setState(() {
            value = label;
            widget.onChange(value);
          });
        },
        color: label == value ? Colors.blue : Colors.grey,
        child: Text(label),
        elevation: 4,
      ),
    );
  }
}
