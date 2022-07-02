import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsivetutorial/responsive/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // nav column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(backgroudContainerImage),
                        fit: BoxFit.cover),
                  ),
                  width: 200),
            ),

            // second column
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
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      boxShadow: const [
        BoxShadow(blurRadius: 2, color: Colors.blueGrey, offset: Offset(1, 3))
      ]);
}
