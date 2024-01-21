import 'package:flutter/material.dart';
import 'home.dart';

class Danke extends StatelessWidget {
  const Danke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Vielen Dank'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo2.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text(
              'Vielen Dank für deine Buchung!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Wir bedanken uns für dein Vertrauen in Loco.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'In Kürze erhältst du eine E-Mail mit allen Details.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarExample()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 206, 129),
              ),
              child: const Text('Weiter stöbern'),
            ),
          ],
        ),
      ),
    );
  }
}
