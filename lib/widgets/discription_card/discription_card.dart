import 'package:flutter/material.dart';

class Discription extends StatelessWidget {
  final String data;

  const Discription({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ExpansionTile(
          title: Text('Description'),
          leading: Icon(Icons.add),
          trailing: Container(
            width: 0,
            height: 0,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('$data'),
            )
          ],
        ),
      ),
    );
  }
}
