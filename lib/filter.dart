import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Filter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Preis in €",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const RangeSliderExample(),
            const Divider(thickness: 0.5),
            const Text(
              "Art der Location",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const Row(
              children: [
                FilterCheckbox(),
                Text(
                  "Studios",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                FilterCheckbox(),
                Text(
                  "Eventhallen",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                FilterCheckbox(),
                Text(
                  "Kreativspace",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Divider(thickness: 0.5),
            const Text(
              "Ort",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const OrtFilter(),
            const Divider(thickness: 0.5),
            const Text("Buchungsdatum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
            DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'dd.MM.yyyy',
              initialValue: DateTime.now().toString(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2027),
              icon: const Icon(Icons.event),
              dateLabelText: 'Startdatum',
              timeLabelText: "Startzeit",
              onChanged: (val) => (val),
              validator: (val) {
                return null;
              },
              onSaved: (val) => (val),
            ),
            DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'dd.MM.yyyy',
              initialValue: DateTime.now().toString(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2027),
              icon: const Icon(Icons.event),
              dateLabelText: 'Enddatum',
              timeLabelText: "Endzeit",
              onChanged: (val) => (val),
              validator: (val) {
                return null;
              },
              onSaved: (val) => (val),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 206, 129),
              ),
              child: const Text('Filter anwenden'),
            ),
          ],
        ),
      ),
    );
  }
}

//Slider

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(0, 300);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      max: 300,
      divisions: 60,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}

//Filtercheckbox Widget
bool checkboxValue = false;

class FilterCheckbox extends StatefulWidget {
  const FilterCheckbox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilterCheckboxState createState() => _FilterCheckboxState();
}

class _FilterCheckboxState extends State<FilterCheckbox> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxValue,
      onChanged: (newValue) {
        setState(() {
          checkboxValue = newValue!;
        });
      },
    );
  }
}

//Ortsfilter
String selectedCity = 'Berlin';

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
  String selectedCity = 'Berlin';

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
