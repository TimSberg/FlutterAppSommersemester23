import 'package:flutter/material.dart';
import 'danke.dart';

class Buchungabschliessen extends StatelessWidget {
  const Buchungabschliessen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Buchung abschließen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                'Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration: const InputDecoration(hintText: 'Vor und Nachname'),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'Telefonnummer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration: const InputDecoration(hintText: 'Telefonnummer'),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'E-Mail',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration: const InputDecoration(hintText: 'E-Mail'),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'Anschrift',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Straße/Hausnr/Ort/PLZ'),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'Geburtstag',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: InkWell(
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                },
                child: IgnorePointer(
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: 'tt.mm.jjjj'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'Personen',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Anzahl der Personen'),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text(
                'Sonstige Informationen',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Sonstige Informationen'),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Danke()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 206, 129),
              ),
              child: const Text('Buchung abschließen'),
            ),
          ],
        ),
      ),
    );
  }
}
