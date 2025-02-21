import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:poc_app/api_service.dart';
import 'package:poc_app/new_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    this.title = "User Form",
    required this.partnerCredentialCode,
  });

  final String title;
  final String partnerCredentialCode;

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

  var users = [];
  var mappedUsers = [];

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

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var result = await _apiService.getUsers(widget.partnerCredentialCode);

      setState(() {
        users = result["data"];
        suggestions = (result["data"] as List<dynamic>)
            .map((user) => user['externalReferenceCode'].toString())
            .toList();

        debugPrint(suggestions.toString());
      });
    });
  }

  void _sendPostMessage() async {
    var positionResult = await _determinePosition();

    var result = await _apiService.fetchData({
      "externalReferenceCode": accountCode.text,
      "mobileNumber": mobileNumber.text,
      "emailAddress": emailAddress.text
    });

    result['code'] =
        widget.partnerCredentialCode == 'BIBO' ? 'R1BIBO' : "R1GCASH";
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
        "mobilePrefix": selectedPrefix,
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

  final TextEditingController accountCode = TextEditingController(text: "");
  final TextEditingController mobileNumber = TextEditingController(text: "");
  final TextEditingController emailAddress = TextEditingController(text: "");
  final TextEditingController firstName = TextEditingController(text: "");
  final TextEditingController lastName = TextEditingController(text: "");

  // final TextEditingController accountCode =
  //     TextEditingController(text: "20240725gZnH2XLCJnl0884600260250");
  // final TextEditingController mobileNumber =
  //     TextEditingController(text: "9162330655");
  // final TextEditingController emailAddress =
  //     TextEditingController(text: "partner-cookie8@yopmail.com");
  // final TextEditingController firstName = TextEditingController(text: "John");
  // final TextEditingController lastName = TextEditingController(text: "Doe");

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    accountCode.dispose();
    mobileNumber.dispose();
    emailAddress.dispose();
    super.dispose();
  }

  List<String> suggestions = [];

  String selectedPrefix = '+63';

  List<String> prefixes = [
    "+1", // USA, Canada
    "+7", // Russia, Kazakhstan
    "+20", // Egypt
    "+27", // South Africa
    "+30", // Greece
    "+31", // Netherlands
    "+32", // Belgium
    "+33", // France
    "+34", // Spain
    "+39", // Italy
    "+40", // Romania
    "+41", // Switzerland
    "+44", // United Kingdom
    "+49", // Germany
    "+52", // Mexico
    "+55", // Brazil
    "+61", // Australia
    "+62", // Indonesia
    "+63", // Philippines
    "+64", // New Zealand
    "+65", // Singapore
    "+66", // Thailand
    "+81", // Japan
    "+82", // South Korea
    "+84", // Vietnam
    "+86", // China
    "+90", // Turkey
    "+91", // India
    "+92", // Pakistan
    "+93", // Afghanistan
    "+94", // Sri Lanka
    "+95", // Myanmar
    "+98", // Iran
    "+212", // Morocco
    "+213", // Algeria
    "+216", // Tunisia
    "+218", // Libya
    "+220", // Gambia
    "+221", // Senegal
    "+222", // Mauritania
    "+223", // Mali
    "+225", // Côte d'Ivoire
    "+230", // Mauritius
    "+234", // Nigeria
    "+251", // Ethiopia
    "+254", // Kenya
    "+255", // Tanzania
    "+256", // Uganda
    "+260", // Zambia
    "+263", // Zimbabwe
    "+264", // Namibia
    "+267", // Botswana
    "+268", // Eswatini (Swaziland)
    "+290", // Saint Helena
    "+298", // Faroe Islands
    "+299", // Greenland
    "+350", // Gibraltar
    "+351", // Portugal
    "+352", // Luxembourg
    "+353", // Ireland
    "+354", // Iceland
    "+355", // Albania
    "+356", // Malta
    "+357", // Cyprus
    "+358", // Finland
    "+359", // Bulgaria
    "+370", // Lithuania
    "+371", // Latvia
    "+372", // Estonia
    "+373", // Moldova
    "+374", // Armenia
    "+375", // Belarus
    "+376", // Andorra
    "+377", // Monaco
    "+380", // Ukraine
    "+381", // Serbia
    "+382", // Montenegro
    "+385", // Croatia
    "+386", // Slovenia
    "+387", // Bosnia and Herzegovina
    "+389", // North Macedonia
    "+420", // Czech Republic
    "+421", // Slovakia
    "+423", // Liechtenstein
    "+500", // Falkland Islands
    "+501", // Belize
    "+502", // Guatemala
    "+503", // El Salvador
    "+504", // Honduras
    "+505", // Nicaragua
    "+506", // Costa Rica
    "+507", // Panama
    "+509", // Haiti
    "+590", // Guadeloupe
    "+591", // Bolivia
    "+592", // Guyana
    "+593", // Ecuador
    "+594", // French Guiana
    "+595", // Paraguay
    "+596", // Martinique
    "+597", // Suriname
    "+598", // Uruguay
    "+670", // Timor-Leste
    "+672", // Australian territories
    "+673", // Brunei
    "+674", // Nauru
    "+675", // Papua New Guinea
    "+676", // Tonga
    "+677", // Solomon Islands
    "+678", // Vanuatu
    "+679", // Fiji
    "+680", // Palau
    "+681", // Wallis and Futuna
    "+682", // Cook Islands
    "+683", // Niue
    "+685", // Samoa
    "+686", // Kiribati
    "+687", // New Caledonia
    "+688", // Tuvalu
    "+689", // French Polynesia
    "+690", // Tokelau
    "+691", // Micronesia
    "+692", // Marshall Islands
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              // TextField(
              //   controller: accountCode,
              //   decoration: InputDecoration(
              //     labelText: 'Account Code',
              //     border: OutlineInputBorder(),
              //   ),
              // ),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  return suggestions.where((String option) {
                    return option
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  accountCode.text = selection;

                  var findObj = users.firstWhere((user) =>
                      user['externalReferenceCode']
                          .toString()
                          .contains(selection));

                  emailAddress.text = findObj["emailAddress"];
                  mobileNumber.text = '${findObj["mobile"]}';

                  firstName.text = findObj["firstName"];
                  lastName.text = findObj["lastName"];

                  setState(() {
                    selectedPrefix = findObj["phonePrefix"];
                  });
                },
                fieldViewBuilder:
                    (context, controller, focusNode, onFieldSubmitted) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      labelText: 'Account Code',
                      border: OutlineInputBorder(),
                    ),
                  );
                },
                optionsViewBuilder: (context, onSelected, options) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      child: SizedBox(
                        height: 200, // Set your desired height
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: options.length,
                          itemBuilder: (context, index) {
                            final String option = options.elementAt(index);
                            return ListTile(
                              title: Text(option),
                              onTap: () => onSelected(option),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
              Row(
                spacing: 4,
                children: [
                  SizedBox(
                    width: 100,
                    child: DropdownButtonFormField<String>(
                      value: selectedPrefix,
                      decoration: InputDecoration(
                        labelText: 'Prefix',
                        border: OutlineInputBorder(),
                      ),
                      items: prefixes.map((String prefix) {
                        return DropdownMenuItem<String>(
                          value: prefix,
                          child: Text(prefix),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPrefix = newValue!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: mobileNumber,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: firstName,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: lastName,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
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
