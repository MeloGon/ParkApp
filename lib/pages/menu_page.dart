import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_titulos(), _botonesRedondeados(context)],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondoApp() {
    // final gradiente = Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: FractionalOffset(0.0, 0.6),
    //           end: FractionalOffset(0.0, 1.0),
    //           colors: [
    //         Color.fromRGBO(52, 54, 101, 1.0),
    //         Color.fromRGBO(35, 37, 57, 1.0)
    //       ])),
    // );

    final purpleBox = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color(0xFF6C63FF),
                Color(0xFF948EFD),
              ])),
        ));

    return Stack(
      children: <Widget>[
        Positioned(top: -100.0, child: purpleBox),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('MENU',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Syne',
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _cardMenu(
              'https://miro.medium.com/max/12000/1*bkoqyysefBd-L2tz_VmjXA.jpeg',
              'PARQUEOS CERCANOS',
              1,
              context),
          _cardMenu(
              'https://www.liderman.com.pe/wp-content/uploads/2019/08/administracio%CC%81n-de-playas-de-estacionamiento.jpg',
              'MI INFO',
              2,
              context),
        ]),
        TableRow(children: [
          _cardMenu(
              'https://s1.eestatic.com/2019/05/27/actualidad/Actualidad_401722658_130553227_1024x576.jpg',
              'MIS FAVORITOS',
              3,
              context),
          _cardMenu(
              'https://media.parkimeter.com/images/blog/high/red-mas-grande-aparcamiento-aplicacion-intuitiva-044fa182e7057c3db926c6ff7fd1b5c1.jpg',
              'CONFIGURACION',
              4,
              context),
        ])
      ],
    );
  }

  Widget _cardMenu(String url, String option, int code, BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (code) {
          case 1:
            return Navigator.pushNamed(context, 'parkspage');
          case 2:
            return Navigator.pushNamed(context, 'myinfopage');
          case 3:
            return Navigator.pushNamed(context, 'myinfopage');
          case 4:
            return Navigator.pushNamed(context, 'myinfopage');
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          clipBehavior: Clip
              .antiAlias, // nada de lo que este en la tarjeta se salga de la misma
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: <Widget>[
              //loading de las imagenes
              FadeInImage(
                image: NetworkImage(url),
                placeholder: AssetImage('assets/images/loading.gif'),
                height: 140.0,
                fit: BoxFit.cover,
              ),
              Container(
                child: Text(
                  option,
                  style: TextStyle(
                      fontFamily: 'Syne',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500),
                ),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
