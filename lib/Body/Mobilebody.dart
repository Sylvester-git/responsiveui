import 'package:flutter/material.dart';
import 'package:responsive_ui/Body/list.dart';
import 'package:responsive_ui/detailcard.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButton: const FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'M O B I L E',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Detailcard(
                  font26: _height / 28.355,
                  font35: _height / 21.06,
                  height200: _height / 3.68,
                  pad10: _height / 73.725,
                  rad17: _height / 43.37,
                  radius15: _height / 49.133,
                  size30: _height / 24.575,
                  width5: _height / 147.45),
            ),
            const SizedBox(
              height: 10,
            ),
            Listview(heigth: _height / 9.83),
          ],
        ));
  }
}
