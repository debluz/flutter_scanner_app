import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerButton extends StatelessWidget {
  ScannerButton({@required this.onPressed});


  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(Icons.scanner_outlined, size: 30.0,),
            SizedBox(width: 8.0),
            Text("SCAN CODE", style: TextStyle(
              fontSize: 25.0
            ),)
          ],
        ),
      ),
      textStyle: TextStyle(color: Colors.white),
      onPressed: onPressed,
      shape: StadiumBorder(),
    );
  }
}
