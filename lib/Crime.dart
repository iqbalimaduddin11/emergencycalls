// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CrimePage extends StatefulWidget {
  const CrimePage({super.key});

  @override
  State<CrimePage> createState() => _CrimePageState();
}

class _CrimePageState extends State<CrimePage> {
  bool isEmergency = false;

  void toggleSOS() {
    setState(() {
      isEmergency = !isEmergency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isEmergency == true) ? Colors.red : Colors.white,
      appBar: AppBar(
        title: const Text(
          'CRIME',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0), // make appbar transparent
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0), // set the height of the gradient
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red, // start color
                  Colors.white, // end color
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EmergencyButton(
              imageSrc: (isEmergency == true)
                  ? 'assets/icons/sos.png'
                  : 'assets/icons/sos.png', // TODO: GANTI INI YAK
              onTap: () => toggleSOS(),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text((isEmergency == true)
                  ? 'tetap standby, kami saat ini sedang meminta bantuan terdekat.'
                  : 'setelah menekan tombol SOS, kami akan menghubungi rumah sakit terdekat, kantor polisi ke lokasi Anda saat ini.',
                  style: const TextStyle(fontSize: 20),
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
  const EmergencyButton({super.key, required this.imageSrc, this.onTap});
  final String imageSrc;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const buttonSize = Size(380, 380);

    return SizedBox.fromSize(
      size: buttonSize,
      child: ClipOval(
        child: Material(
          color: Theme.of(context).colorScheme.surface, // use theme color
          child: InkWell(
            splashColor: Theme.of(context).colorScheme.surface, // set splash color to the same as button background
            onTap: onTap ?? () {}, // button pressed
            child: Image.asset(
              imageSrc,
              fit: BoxFit.cover,
            ), // load icon from asset
          ),
        ),
      ),
    );
  }
}