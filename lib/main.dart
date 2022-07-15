import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        appBar: AppBar(
          title: const Text("Position"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                color: Colors.amberAccent,
              ),
              const Positioned(
                top: 90,
                child: Text("sajib"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
