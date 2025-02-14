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
      // controller
      //     .loadRequest(Uri.parse("http://192.168.68.117:5173/acceptance"));

      // controller.loadRequest(
      //     Uri.parse('http://192.168.1.39:5173/main/investment-opportunities'));
      // var token = jsonEncode(widget.apiData["tokenDetails"]);
      // // var token = "hello";
      // debugPrint(token);
      // // controller.runJavaScript("window.postMessage('$token', '*');");

      // controller.runJavaScript(
      //     "window.postMessage({action: 'bibo', value: '$token' }, '*');");
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Web View'),
      ),
      body: WebViewWidget(
        controller: controller
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageFinished: (String url) {
                var token = jsonEncode(widget.apiData);

                controller.runJavaScript(
                    "window.postMessage({action: 'bibo', value: '$token' }, '*');");
              },
            ),
          ),
      ),
    );
  }
}
