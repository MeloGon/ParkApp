import 'package:flutter/material.dart';
import 'package:flutter_park/widgets/slider_widget.dart';
import 'package:hexcolor/hexcolor.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentPage = 0;
  PageController _pageController = PageController();
  List<Widget> _pages = [
    SliderWidget(
        title: "Que no te vuelva a pasar",
        description: "Evita que las gruas se lleven tu vehiculo",
        image: "assets/images/towing.svg"),
    SliderWidget(
        title: "Un clasico",
        description: "Ahorrate el ir y no encontrar un sitio disponible",
        image: "assets/images/town.svg"),
    SliderWidget(
        title: "No desperdicies mas tiempo",
        description:
            "Adquiere un mayor control y organizacion sobre tu vehiculo",
        image: "assets/images/fastcar.svg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Hexcolor('#6C63FF')
                                : Hexcolor('#6C63FF').withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  decoration: BoxDecoration(
                      color: Hexcolor('#6C63FF'),
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'loginpage');
                          },
                          child: Text(
                            "Empecemos",
                            style: TextStyle(
                              fontFamily: 'Syne',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
