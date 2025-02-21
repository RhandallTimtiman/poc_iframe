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
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  @override
  void initState() {
    super.initState();

    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.setNavigationDelegate(
      NavigationDelegate(
        onPageFinished: (String url) {
          Future.delayed(Duration(milliseconds: 100), () {
            controller.runJavaScript("location.reload();");
          });

          var token = jsonEncode(widget.apiData);
          controller.runJavaScript(
            "window.postMessage({action: 'bibo', value: '$token' }, '*');",
          );
        },
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.loadRequest(
        Uri.parse(widget.apiData["accountDetails"]["iframeUrl"]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('rerender ');

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Web View'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
