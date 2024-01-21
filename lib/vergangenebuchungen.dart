import 'package:flutter/material.dart';

class Buchungen extends StatelessWidget {
  const Buchungen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Buchungen')),
        body: ListView(children: [
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
                ),
              ),
              title: const Text("Musik Studio"),
              subtitle: const Text('14.07.23'),
              trailing: const Icon(Icons.music_note_outlined)),
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
              subtitle: const Text("24.06.23"),
              trailing: const Icon(Icons.record_voice_over))
        ]));
  }
}
