import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: WidgetExercise1()));
}

class WidgetExercise1 extends StatelessWidget {
  const WidgetExercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.download),
            Icon(Icons.settings),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'asset/americano-slide.png',
            width: 400,
            height: 300,
          ),
          const Text(
            '1975 Porsche 911 Carrera',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.comment),
              Icon(Icons.search),
              Icon(Icons.share),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Essential Information'),
              Text('1 of 3 done'),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 35,
          ),
          const Row(
            children: [
              Icon(Icons.check_circle),
              Text('Year, Make, Model, VIN'),
            ],
          ),
          const Column(
            children: [
              Text('Year: 1975'),
              Text('Make: Porsche'),
              Text('Model: 911 Carrera'),
              Text('VIN: 9115400029'),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Icon(Icons.check_circle),
              Text('Description'),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Icon(Icons.check_circle),
              Text('Photos'),
            ],
          ),
        ],
      ),
    );
  }
}
