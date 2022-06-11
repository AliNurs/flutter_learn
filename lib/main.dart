import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("My Second task"),
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                //        width: MediaQuery.of(context).size.width * 10,
                color: Color.fromARGB(255, 247, 27, 23),
//
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 120,
                  ),
//
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Image",
                      style: TextStyle(fontFamily: 'boorsok', fontSize: 45),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                //   alignment: Alignment.bottomCenter,
                color: Colors.lightGreenAccent.shade700,
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return const RepeatScrolList();
                  }),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class RepeatScrolList extends StatelessWidget {
  const RepeatScrolList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 110,
        width: 150,
        margin: EdgeInsets.only(left: 10, right: 10),
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.add,
              size: 36,
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
