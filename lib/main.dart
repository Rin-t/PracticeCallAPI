import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GoとFlutterでローカル通信！'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _controller = TextEditingController();

  void uploadText(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 240,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: "入力してね！"
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => uploadText(_controller.text),
              child: Text("送信！"),
            )
          ]
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
