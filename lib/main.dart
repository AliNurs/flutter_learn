import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Second task"),
        ),

        // Пока что без видео, без Media Query, поэтому с размером можеть быть доработки но в моем т-фоне работает
        body: Column(
          children: [
            Container(
              height: 610,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Image",
                  style: TextStyle(fontFamily: 'boorsok', fontSize: 45),
                ),
              ),
            ),
            Container(
              color: Colors.lightGreenAccent,
              height: 126,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                  RepeatScrolList(),
                ],
              ),
            )
          ],
        ),
      ),

      //  ),
    );
  }
}

class RepeatScrolList extends StatelessWidget {
  const RepeatScrolList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        width: 130,
        margin: EdgeInsets.only(left: 10, right: 10),
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "+",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Add",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
