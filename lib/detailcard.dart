import 'package:flutter/material.dart';

class Detailcard extends StatelessWidget {
  final double height200,
      radius15,
      pad10,
      font35,
      rad17,
      size30,
      width5,
      font26;
  const Detailcard({
    Key? key,
    required this.font26,
    required this.font35,
    required this.height200,
    required this.pad10,
    required this.rad17,
    required this.radius15,
    required this.size30,
    required this.width5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //aspect ratio is used here to dynamically adjust the height as the screen expands,
    //keeping it at 200 proportional to the screen size.
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        padding: EdgeInsets.all(pad10),
        height: height200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(radius15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                '\$ 200000',
                style: TextStyle(color: Colors.black, fontSize: font35),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: rad17,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.red,
                        size: size30,
                      ),
                    ),
                    SizedBox(width: width5),
                    Text(
                      'Expense',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: font26),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Income',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: font26),
                    ),
                    SizedBox(width: width5),
                    CircleAvatar(
                        radius: rad17,
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.green,
                          size: size30,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
