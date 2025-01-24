import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poc_app/api_service.dart';
import 'package:poc_app/new_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  final ApiService _apiService = ApiService();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
    )
    ..loadRequest(Uri.parse('https://ext.dev.v2.roundone.ph/main'));

  @override
  void initState() {
    super.initState();
  }

  void _sendPostMessage() async {
    var result = await _apiService.fetchData({
      "accountCode": accountCode.text,
      "mobileNumber": mobileNumber.text,
      "emailAddress": emailAddress.text
    });

    inspect(result["tokenDetails"]);
    // const String jsCode = '''
    //   (function() {
    //     var xhr = new XMLHttpRequest();
    //     xhr.open("POST", "https://ext.dev.v2.roundone.ph/main", true);
    //     xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    //     xhr.onreadystatechange = function() {
    //       if (xhr.readyState == 4 && xhr.status == 200) {
    //         console.log("POST successful: " + xhr.responseText);
    //         console.log("Data posted");
    //       }
    //     };
    //     var data = JSON.stringify({"bibo": "bibost"});
    //     console.log(data);
    //     xhr.send(data);
    //   })();
    // ''';
    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewPage(
            apiData: result,
          ),
        ),
      );
    }
  }

  final TextEditingController accountCode =
      TextEditingController(text: "20240725gZnH2XLCJnl0884600260241");
  final TextEditingController mobileNumber =
      TextEditingController(text: "123123123");
  final TextEditingController emailAddress =
      TextEditingController(text: "slot.staging@yopmail.com");

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    accountCode.dispose();
    mobileNumber.dispose();
    emailAddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 4,
          children: [
            TextField(
              controller: accountCode,
              decoration: InputDecoration(
                labelText: 'Account Code',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Space between TextFields
            TextField(
              controller: mobileNumber,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Space between TextFields
            TextField(
              controller: emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendPostMessage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
