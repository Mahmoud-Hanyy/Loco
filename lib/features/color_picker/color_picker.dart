import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../../core/utils/styles.dart';

class ColorPickerScreen extends StatefulWidget {
  const ColorPickerScreen({super.key});
  static const String routeName = "color";

  @override
  State<StatefulWidget> createState()=> _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  Color _selectedColor = Colors.red;
  List<Color> _colorPalette = [];

  @override
  void initState() {
    super.initState();
    _updatePalette();
  }

  void _updateColor(Color color) {
    setState(() {
      _selectedColor = color;
      _updatePalette();
    });
  }

  void _updatePalette() {
    _colorPalette = _generatePalette(_selectedColor);
  }

  List<Color> _generatePalette(Color color) {
    List<Color> palette = [];
    for (int i = 1; i <= 5; i++) {
      final hslColor = HSLColor.fromColor(color);
      final adjustedColor = hslColor.withLightness(hslColor.lightness * (i * 0.3)).toColor();
      palette.add(adjustedColor);
    }
    return palette;
  }

  void _openColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Pick a color'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: _selectedColor,
            onColorChanged: _updateColor,
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Done'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        automaticallyImplyLeading: false,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text('Loco color picker',
            style: Styles.textStyle30.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Selected Color:',
                  style: Styles.textStyle24.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                color: _selectedColor,
              ),
              const SizedBox(height: 20),
              Text('Color Palette:',
                  style: Styles.textStyle24.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: _colorPalette.map((color) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: color,
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.surface,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  fixedSize: const Size(200, 50),
                ),
                onPressed: () => _openColorPicker(context),
                child: Text(
                  'Pick a color',
                  style: Styles.textStyle16.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}