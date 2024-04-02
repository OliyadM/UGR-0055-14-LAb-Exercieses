
import 'package:flutter/material.dart';

class BMICalculatorFrontPage extends StatelessWidget {
  @override
  const BMICalculatorFrontPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Gender Selection',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderToggleButton(icon: Icons.male, label: 'MALE'),
                GenderToggleButton(icon: Icons.female, label: 'FEMALE'),
              ],
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Height',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            HeightSlider(),
            const SizedBox(height: 30.0),
            const Text(
              'Weight',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            WeightSelector(),
          ],
        ),
      ),
    );
  }
}

class GenderToggleButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const GenderToggleButton({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 40.0,
          ),
          const SizedBox(height: 5.0),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class HeightSlider extends StatefulWidget {
  @override
  const HeightSlider({super.key});
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double _currentValue = 176.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${_currentValue.toInt()} cm',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Slider(
          value: _currentValue,
          min: 100.0,
          max: 250.0,
          divisions: 150,
          onChanged: (double value) {
            setState(() {
              _currentValue = value;
            });
          },
          activeColor: Colors.red,
        ),
      ],
    );
  }
}

class WeightSelector extends StatefulWidget {
  @override
  _WeightSelectorState createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  int _currentWeight = 60;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.remove, size: 40.0),
          onPressed: () {
            setState(() {
              if (_currentWeight > 30) _currentWeight--;
            });
          },
        ),
        Text(
          '$_currentWeight kg',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.add, size: 40.0),
          onPressed: () {
            setState(() {
              if (_currentWeight < 200) _currentWeight++;
            });
          },
        ),
      ],
    );
  }
}
