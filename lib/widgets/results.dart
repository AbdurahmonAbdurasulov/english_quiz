import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function() restart;
  final String sent;
  Result(this.result, this.restart,this.sent);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          "Test yakunlandi!Siz $result ta to'g'ri topdingiz!$sent",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        ElevatedButton.icon(
            onPressed: restart,
            icon: Icon(Icons.restart_alt),
            label: Text("Restart"),
            style: ElevatedButton.styleFrom(primary: Colors.green),)
      ],
    );
  }
}
