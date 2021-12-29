import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Example'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                )
              ],
            ),
            Container(
              color: Colors.amber,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.black,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
