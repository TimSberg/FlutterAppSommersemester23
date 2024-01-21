import 'package:flutter/material.dart';
import 'package:loco_2/buchung.dart';
import 'filter.dart';

var _controller = TextEditingController();

class Search extends StatelessWidget {
  Search({super.key});

  final List<Map<String, dynamic>> _locations = [
    {
      'location': 'Zelterstraße, Berlin',
      'details': 'Musikstudio',
      'image': 'assets/musicstudio.jpeg',
      'price': '80€',
    },
    {
      'location': 'Tafelberg, Hamburg',
      'details': 'Kreativstudio',
      'image': 'assets/coworking.jpeg',
      'price': '440€',
    },
    {
      'location': 'Brüderstraße, Köln',
      'details': 'Podcaststudio',
      'image': 'assets/podcaststudio.png',
      'price': '100€',
    },
    {
      'location': 'Sternstraße, Düsseldorf',
      'details': 'Eventhalle',
      'image': 'assets/indoorevent.jpeg',
      'price': '500€',
    },
    {
      'location': 'Wilhelmstraße, Dortmund',
      'details': 'Kreativstudio',
      'image': 'assets/coworking.jpeg',
      'price': '100€',
    },
    {
      'location': 'Kantstraße, München',
      'details': 'Podcaststudio',
      'image': 'assets/podcaststudio.png',
      'price': '250€',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Explore'),
          actions: [
            IconButton(
              icon: const Icon(Icons.tune),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Filter()),
                );
              },
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(width: 0.8),
                    ),
                    hintText: 'Suche nach Location oder Ort',
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text('Es wurden ${_locations.length} Ergebnisse gefunden'),
              ),
              Expanded(
                  child: ListView(
                      itemExtent: 330,
                      children: _locations
                          .map(
                            (alocation) => Stack(children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            child: SizedBox(
                                                child: Column(children: [
                                              const SizedBox(),
                                              SizedBox(
                                                  child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                child: Image.asset(
                                                  alocation['image'],
                                                  width: 351,
                                                ),
                                              )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4.0),
                                                child: Text(
                                                  alocation['details'],
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(width: 32),
                                                    Text(
                                                      alocation['location'],
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 8.0),
                                                      child: Icon(
                                                        Icons.favorite_outline,
                                                        color: Color.fromARGB(
                                                            255, 131, 131, 131),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Text(
                                                  alocation['price'] + '/Tag',
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF6E83F5)),
                                                ),
                                              )
                                            ])),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Buchung(alocation)));
                                            },
                                          ))))
                            ]),
                          )
                          .toList())),
            ])));
  }
}
