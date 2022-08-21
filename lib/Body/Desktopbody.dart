import 'package:flutter/material.dart';
import 'package:responsive_ui/Body/list.dart';
import 'package:responsive_ui/detailcard.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'T A B L E T',
          style: TextStyle(color: Colors.black, fontSize: _height / 48.32),
        ),
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(_height / 151),
                    //aspect ratio is used here to dynamically adjust the height as the screen expands,
                    //keeping it at 200 proportional to the screen size.
                    child: Detailcard(
                      font26: 50,
                      font35: 65,
                      height200: _height / 6.04,
                      pad10: 12.08,
                      rad17: 30,
                      radius15: _height / 80.53,
                      size30: 50,
                      width5: _height / 241.6,
                    )),
                Listview(heigth: _height / 16.106),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(_height / 151),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(_height / 120.8)),
                gradient: const LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.lightGreen,
                    Colors.lightGreenAccent,
                    Colors.redAccent,
                    Colors.red,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: _height / 6.04,
            ),
          ),
        ],
      ),
    );
  }
}
