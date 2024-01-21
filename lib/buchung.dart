import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'buchungsabschluss.dart';

class Buchung extends StatelessWidget {
  const Buchung(Map<String, dynamic> alocation, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Buchungsdetails'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/coworking.jpeg'),
              const SizedBox(height: 8),
              const Text(
                'Flow Kreativstudio',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const Text(
                '55 €/Std.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF6E83F5)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Willkommen im "Flow Kreativstudio"! Entfalte deine Kreativität in inspirierender Atmosphäre zentral in Berlin Kreuzberg gelegen. Jetzt buchbar für 55 €/Std.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Start des Buchungszeitraumes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              DateTimePicker(
                type: DateTimePickerType.dateTime,
                dateMask: 'dd.MMM.yyyy, hh:mm',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2023),
                lastDate: DateTime(2028),
                icon: const Icon(Icons.event),
                timeLabelText: "Uhrzeit",
              ),
              const SizedBox(height: 30),
              const Text(
                'Ende des Buchungszeitraumes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              DateTimePicker(
                type: DateTimePickerType.dateTime,
                dateMask: 'dd.MMM.yyyy, hh:mm',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2023),
                lastDate: DateTime(2028),
                icon: const Icon(Icons.event),
                timeLabelText: "Uhrzeit",
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Gesamtpreis:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '220,00 €',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFF6E83F5),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Buchungabschliessen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 15, 206, 129),
                        ),
                        child: const Text('Weiter'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
