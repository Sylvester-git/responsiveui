import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  final double heigth;
  const Listview({Key? key, required this.heigth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        index = index + 1;
        return Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(
              color: index % 2 == 0 ? Colors.green : Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 5),
                  blurRadius: 10.0,
                  spreadRadius: 0.5,
                )
              ],
            ),
            height: heigth,
            child: Text((index).toString()),
          ),
        );
      },
    ));
  }
}
