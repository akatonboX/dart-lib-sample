library lib;

import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class WebViewX extends StatefulWidget {
  const WebViewX({super.key, required this.title});
  final String title;
  @override
  State<WebViewX> createState() => _WebViewXState();
}

class _WebViewXState extends State<WebViewX> {
  // ignore: unused_field
  late WebViewPlusController _controller; // WebViewコントローラー

  //■assetsへの接続
  static const String APPLICATION_URI = 'assets/app/';
  //■react(yarn start)への接続
  //※adb reverse tcp:3000 tcp:3000で、ポートフォーワードすること
  // ignore: constant_identifier_names
  // static const String APPLICATION_URI = 'http://localhost:3000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ヘッダ3')),
        body: WebViewPlus(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              _controller = controller;
              _controller.loadUrl(APPLICATION_URI);
            }));
  }
}
