import 'package:flutter/material.dart';
// Faisal Alanazi

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Pop Up Menu",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "PopUp Menu";

  var _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC41A3B),
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  _value = value;
                });
              },
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: "الصفحة الأولى",
                      child: Text("الصفحة الأولى"),
                    ),
                    const PopupMenuItem(
                      value: " الصفحة الثانية",
                      child: Text(" الصفحة الثانية"),
                    )
                  ]),
        ],
      ),
      body: Center(
        child: Text(
          "هذه $_value",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
