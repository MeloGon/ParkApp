import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderWidget({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            image,
            width: width * 0.6,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 28,
                fontFamily: 'Syne',
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontFamily: 'Syne',
                fontSize: 15,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
