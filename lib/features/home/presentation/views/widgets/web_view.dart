import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key, required this.url });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      initialUrl: url,
    ));
  }
}
