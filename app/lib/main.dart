import 'package:flutter/material.dart';
import 'package:lib/lib.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const WebViewX(
        title: 'サンプル',
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late WebViewPlusController _controller; // WebViewコントローラー

//   //■assetsへの接続
//   static const String APPLICATION_URI = 'assets/app/';
//   //■react(yarn start)への接続
//   //※adb reverse tcp:3000 tcp:3000で、ポートフォーワードすること
//   // ignore: constant_identifier_names
//   // static const String APPLICATION_URI = 'http://localhost:3000';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('ヘッダ3')),
//         body: WebViewPlus(
//             javascriptMode: JavascriptMode.unrestricted,
//             onWebViewCreated: (controller) {
//               _controller = controller;
//               _controller.loadUrl(APPLICATION_URI);
//             }));
//   }
// }
