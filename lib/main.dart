import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController fNum = TextEditingController();
  TextEditingController sNum = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(243, 203, 119, 1.0),

        /// App Bar
        appBar: AppBar(
            title: Text("Calculate Application"),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(194, 93, 14, 1.0)),
        body: Column(
          children: [
            ///first textfield
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: fNum,
                decoration: InputDecoration(
                  labelText: "First Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            ///second textfield
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: sNum,
                decoration: InputDecoration(
                  labelText: "Second Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            /// EL Calculate Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result = int.parse(fNum.text) + int.parse(sNum.text);
                        });
                      },
                      child: Text("Calculate"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(245, 127, 23, 1),
                        ),
                      ),
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      fNum.clear();
                      sNum.clear();
                      result = 0;
                    });
                  },
                  icon: Icon(
                    Icons.close,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                ),
              ],
            ),

            /// result text
            Center(
              child: Text("Reult:$result"),
            )
          ],
        ),
      ),
    );
  }
}
