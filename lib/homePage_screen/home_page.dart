import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:qr_code_generator/homePage_screen/generate_qr_code.dart';
import 'package:qr_code_generator/homePage_screen/scan_qr_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff83B4FF),
      appBar: AppBar(
        title: const Text(
          "QR Code Scanner and Generator",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 4, 29, 49)),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF5A72A0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScanQRCode()));
                },
                child: const Center(
                  child: Text(
                    'Scan QR Code',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GenerateQRCode()));
                },
                child: const Center(
                  child: Text(
                    'Generate QR Code',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
