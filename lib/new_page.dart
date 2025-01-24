import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewPage extends StatefulWidget {
  final dynamic apiData;
  const NewPage({super.key, required this.apiData});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    );

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.loadRequest(
          Uri.parse(widget.apiData["accountDetails"]["iframeUrl"]));
      var token = jsonEncode(widget.apiData["tokenDetails"]);
      controller.runJavaScript("window.postMessage('$token', '*');");
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Web View'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
