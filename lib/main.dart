import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

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
    var positionResult = await _determinePosition();

    inspect(positionResult);
    var result = await _apiService.fetchData({
      "externalReferenceCode": accountCode.text,
      "mobileNumber": mobileNumber.text,
      "emailAddress": emailAddress.text
    });
    result['code'] = "R1BIBO";
    result['externalReferenceCode'] = accountCode.text;
    result['location'] =
        "${positionResult.latitude}, ${positionResult.longitude}";
    result['userDetails'] = {
      "accountCode": accountCode.text,
      "mobileNumber": mobileNumber.text,
      "emailAddress": emailAddress.text,
      "nationality": "",
      "otherNationality": "",
      "lastName": firstName.text,
      "firstName": lastName.text,
      "middleName": "Dustin",
      "suffix": "II",
      "dateOfBirth": "12-16-1990",
      "companyPosition": "CTO",
      "contactDetails": {
        "mobilePrefix": "+63",
        "mobileNumber": mobileNumber.text,
      },
      "addressDetails": {
        "countryIsoCode2": "PH",
        "countryName": "Philippines",
        "regionName": "Calabarzon",
        "stateName": "Laguna",
        "cityName": "City of Santa Rosa",
        "postalCode": "4026",
        "bldgFloorNo": null,
        "townBaranggay": "Pooc",
        "fullAddress": "Blk 9 Lot 5",
        "addressAdditionalInformation": "Test if working",
      }
    };
    inspect(result);

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
      TextEditingController(text: "20240725gZnH2XLCJnl0884600260250");
  final TextEditingController mobileNumber =
      TextEditingController(text: "9162330655");
  final TextEditingController emailAddress =
      TextEditingController(text: "partner-cookie8@yopmail.com");
  final TextEditingController firstName = TextEditingController(text: "John");
  final TextEditingController lastName = TextEditingController(text: "Doe");

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
            SizedBox(height: 16), // Space between TextFields
            TextField(
              controller: firstName,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Space between TextFields
            TextField(
              controller: lastName,
              decoration: InputDecoration(
                labelText: 'Last Last',
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
