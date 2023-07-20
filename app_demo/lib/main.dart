import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chu'),
      ),
      body: Center(
// SafeArea
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Home Screen',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Bấm vào đây')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}
