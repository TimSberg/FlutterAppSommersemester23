import 'package:flutter/material.dart';
import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Willkommen bei Loco'),
        ),
        body: Column(
          children: [
            const Spacer(),
            Image.asset('assets/locomain.jpg'),
            const Spacer(),
            const Spacer(),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "📍",
                style: TextStyle(fontSize: 20),
              ),
              OrtFilter()
            ]),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 14),
                    ),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExample()),
                        
                      );
                    },
                    child: const Text("Suche Locations",
                        style: TextStyle(
                          fontSize: 22,
                        )))),
            const Spacer(),
          ],
        ));
  }
}


String selectedCity = 'Alle';

List<String> cities = [
  'Alle',
  'Berlin',
  'Hamburg',
  'München',
  'Köln',
  'Frankfurt am Main',
  'Stuttgart',
  'Düsseldorf',
];

class OrtFilter extends StatefulWidget {
  const OrtFilter({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _OrtFilterState createState() => _OrtFilterState();
}

class _OrtFilterState extends State<OrtFilter> {
  String selectedCity = 'Alle'; 

  List<String> cities = [
    'Alle',
    'Berlin',
    'Hamburg',
    'München',
    'Köln',
    'Frankfurt am Main',
    'Stuttgart',
    'Düsseldorf',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCity,
      items: cities.map((String city) {
        return DropdownMenuItem<String>(
          value: city,
          child: Text(city),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedCity = newValue ?? '';
        });
      },
    );
  }
}
