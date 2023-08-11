import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders && Checks"),
      ),
      //con esto evitamos desbordamientos
      body: Column(
        children: [
          Slider.adaptive(
              value: _sliderValue,
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                if (_checkValue) {
                  print(value);
                  _sliderValue = value;
                  setState(() {});
                } else {
                  null;
                }
              }),
          Checkbox.adaptive(
              activeColor: AppTheme.primary,
              value: _checkValue,
              onChanged: (value) {
                _checkValue = value ?? false;
                setState(() {});
              }),
          CheckboxListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _checkValue,
              onChanged: (value) {
                _checkValue = value ?? false;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _checkValue,
              onChanged: (value) {
                _checkValue = value ?? false;
                setState(() {});
              }),
          const AboutListTile(
            applicationName: 'Components app',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.pngmart.com/files/2/Mortal-Kombat-Sub-Zero-PNG-Pic.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
