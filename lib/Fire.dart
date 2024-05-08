// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FirePage extends StatelessWidget {
  const FirePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FIRE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EmergencyButton(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                    'Setelah menekan tombol SOS, kami akan menghubungi kantor pemadam kebakaran terdekat.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyButton extends StatelessWidget {
  const EmergencyButton({super.key});

  @override
  Widget build(BuildContext context) {
    const buttonSize = Size(380, 380);
    const iconImage = 'assets/icons/sos.png'; // replace with your asset path

    return SizedBox.fromSize(
      size: buttonSize,
      child: ClipOval(
        child: Material(
          color: Theme.of(context).colorScheme.surface, // use theme color
          child: InkWell(
            splashColor: Theme.of(context).colorScheme.error, // use theme color
            onTap: () {}, // button pressed
            child: Image.asset(
              iconImage,
              fit: BoxFit.cover,
              ), // load icon from asset
          ),
        ),
      ),
    );
  }
}