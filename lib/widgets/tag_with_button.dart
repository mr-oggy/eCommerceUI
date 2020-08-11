import 'package:flutter/material.dart';

class TagWithCancelButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const TagWithCancelButton({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey[500],
              ),
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.button.merge(
                      TextStyle(color: Colors.white),
                    ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.clear,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
