import 'package:ecommerce_ui/widgets/button_row.dart';
import 'package:ecommerce_ui/widgets/button_row_color.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Icon(
                          Icons.invert_colors,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Colour:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Chose a colour for item',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonColor(
                    initialColor: Colors.grey[400],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Icon(
                        Icons.perm_identity,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'size:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Chose a colour for item',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonRow(
                    onChange: (String size) {
                      // print(size);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
