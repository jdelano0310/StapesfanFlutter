import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsivetutorial/responsive/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(primaryBGColor),
      appBar: AppBar(
        title: const Text("Joe 'Stapes' Stapleton"),
        flexibleSpace: const Image(
          image: AssetImage(backgroudNavImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: HexColor(primaryNavColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              child: Column(
                children: [
                  // stand-up schedule
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        decoration: myBoxDecoration(),
                      ),
                    ),
                  ),

                  // comment section & recommended videos
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            // second column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(backgroudContainerImage),
                        fit: BoxFit.cover),
                  ),
                  width: 200),
            )
          ],
        ),
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
      border: Border.all(),
      color: HexColor(primaryBGColor),
      borderRadius: BorderRadius.all(Radius.circular(5.0)));
}
