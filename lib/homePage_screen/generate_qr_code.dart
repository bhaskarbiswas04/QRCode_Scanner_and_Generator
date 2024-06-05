import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();
  String? qrCodeData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff83B4FF),
      appBar: AppBar(
        title: const Text(
          'Generate QR Code',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromARGB(255, 4, 29, 49),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF5A72A0),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: urlController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your URL',
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Generate QR code logic using controller.text
                qrCodeData = urlController.text;
              });
            },
            child: const Text('GENERATE QR CODE'),
          ),
          qrCodeData != null
              ? SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: QrImageView(
                    data: qrCodeData ?? "",
                    size: 200.0,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
