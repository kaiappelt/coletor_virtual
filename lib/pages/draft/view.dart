import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  @override
  _BarcodeScannerScreenState createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  List<String> scannedCodes = [];

  Future<void> scanBarcode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      "Cancelar",
      true,
      ScanMode.DEFAULT,
    );

    if (code != '-1') {
      setState(() {
        scannedCodes.add(code);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: scannedCodes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(scannedCodes[index]),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: scanBarcode,
            child: Text('Scan Barcode'),
          ),
        ],
      ),
    );
  }
}
