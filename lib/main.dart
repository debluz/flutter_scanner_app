import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scanner_app/result_window.dart';
import 'package:flutter_scanner_app/scanner_button.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('ScannerCodeApp')),
            body: Builder(builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SampleContainer(),
                  SizedBox(height: 70.0,)
                ],
              );
            })));
  }
}



class SampleContainer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SampleContainerState();
  }

}

class _SampleContainerState extends State<SampleContainer>{
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Scan your\n linear barcode\n or\n 2D code',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5
            ),
            Image(image: AssetImage('images/barcode.png'),
              width: 500.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
            ScannerButton(onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultWindow()))
            }),
          ],
        )
    );
  }
}

