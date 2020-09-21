import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

var _screenSize;

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController(text: 'tecnico2@tecnico.com');
  final passwordController = TextEditingController(text: '111aaa');
  TextStyle styleInput = TextStyle(fontFamily: 'Syne', fontSize: 14.0);
  TextStyle styleLabel =
      TextStyle(fontFamily: 'Syne', fontSize: 15, fontWeight: FontWeight.w500);

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _supImages(),
                _loginCard(),
                _functionButtons(),
                _dividerSocial(),
                _socialIcons(),
                _registerUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _supImages() {
    var logoImage = Container(
        width: _screenSize.width * 0.2,
        height: _screenSize.height * 0.2,
        child: Image.asset('assets/images/logoparkapp.png'));

    var userType = Container(
      width: _screenSize.width * 0.7,
      height: _screenSize.height * 0.25,
      child: SvgPicture.asset(
        'assets/images/offroad.svg',
        placeholderBuilder: (context) {
          return Lottie.asset('assets/images/loading.json');
        },
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [logoImage, userType],
    );
  }

  Widget _loginCard() {
    var titleCard = Text('LOGIN',
        style: TextStyle(
            fontFamily: 'Syne', fontSize: 18, fontWeight: FontWeight.w700));
    var labelUser = Text('Usuario:', style: styleLabel);
    var labelPass = Text('Contraseña:', style: styleLabel);
    var inputUser = Container(
      height: 40,
      child: TextFormField(
        style: styleInput,
        controller: userController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            suffixIcon: Icon(Icons.accessibility_new)),
      ),
    );
    var inputPass = Container(
      height: 40,
      child: TextFormField(
        style: styleInput,
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10), suffixIcon: Icon(Icons.lock)),
      ),
    );

    // var forguetButton =
    //     FlatButton(onPressed: () {}, child: Text('Olvidaste tu contrasena'));
    var forguetButton = GestureDetector(
        onTap: () {},
        child: Text('Olvidaste tu contrasena',
            style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.blue)));

    var spacetwe = SizedBox(
      height: 20.0,
    );

    var spaceten = SizedBox(
      height: 10.0,
    );

    return Container(
      padding: EdgeInsets.all(20.0),
      width: _screenSize.width * 1,
      height: _screenSize.height * 0.43,
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleCard,
              spaceten,
              labelUser,
              inputUser,
              spaceten,
              labelPass,
              inputPass,
              spacetwe,
              forguetButton
            ],
          ),
        ),
      ),
    );
  }

  Widget _functionButtons() {
    var checkRem = Container(
        width: _screenSize.width * 0.5,
        child: CheckboxListTile(
          title: Text(
            "Recuérdame",
            style: styleLabel,
          ),
          value: false,
          onChanged: (newValue) {},
          controlAffinity:
              ListTileControlAffinity.leading, //  <-- leading Checkbox
        ));

    var logButton = RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'menupage');
      },
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF6C63FF),
              Color(0xFF948EFD),
              Color(0xFF6C63FF),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: const Text(
            'INGRESA',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: const EdgeInsets.all(0.0),
    );

    return Container(
      height: _screenSize.height * 0.06,
      padding: const EdgeInsets.only(right: 25.0),
      child: Row(
        children: [checkRem, Expanded(child: logButton)],
      ),
    );
  }

  Widget _dividerSocial() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xFF948EFD),
              thickness: 2.0,
            ),
          ),
          Text(
            '  LOGIN POR REDES   ',
            style: styleLabel,
          ),
          Expanded(
            child: Divider(
              color: Color(0xFF948EFD),
              thickness: 2.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton(
          Buttons.Facebook,
          mini: true,
          onPressed: () {},
        ),
        SignInButton(
          Buttons.Email,
          mini: true,
          onPressed: () {},
        ),
        SignInButton(
          Buttons.Microsoft,
          mini: true,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _registerUser() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Eres un nuevo usuario ?',
            style: TextStyle(fontFamily: 'Syne'),
          ),
          SizedBox(
            width: 10.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Registrate',
              style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6C63FF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
