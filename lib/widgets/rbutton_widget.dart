import 'package:flutter/material.dart';

class RoButton extends StatelessWidget {
  final Color initColor;
  final Color midColor;
  final Color endColor;
  final String txtButton;
  final String action;

  RoButton(
      {this.initColor,
      this.midColor,
      this.endColor,
      this.txtButton,
      this.action});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'menupage');
      },
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              initColor,
              midColor,
              endColor,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        child: Container(
          constraints: BoxConstraints(
              minWidth: 120.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            txtButton,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
    );
  }
}
