import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Wishlist'),
        ),
        body: ListView(children: <Widget>[
          ListTile(
              leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 100,
                    minHeight: 100,
                    maxWidth: 200,
                    maxHeight: 200,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/musicstudio.jpeg'),
                  )),
              title: const Text("Musik Studio"),
              subtitle: const Text("Studio"),
              trailing: const Icon(Icons.favorite,
                  color: Color.fromARGB(255, 255, 32, 32))),
          const Divider(thickness: 0.5),
          ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  minHeight: 100,
                  maxWidth: 200,
                  maxHeight: 200,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/podcaststudio.png')),
              ),
              title: const Text("Podcast Studio"),
              subtitle: const Text("Studio"),
              trailing: const Icon(Icons.favorite,
                  color: Color.fromARGB(255, 255, 32, 32)))
        ]));
  }
}
