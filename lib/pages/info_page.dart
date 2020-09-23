import 'package:flutter/material.dart';
import 'package:flutter_park/widgets/rbutton_widget.dart';

class MyInfoPage extends StatefulWidget {
  @override
  _MyInfoPageState createState() => _MyInfoPageState();
}

var _screenSize;
TextStyle styleInput = TextStyle(fontFamily: 'Syne', fontSize: 13.0);

class _MyInfoPageState extends State<MyInfoPage> {
  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6C63FF),
        centerTitle: true,
        title: Text(
          'INFORMACION DEL VEHICULO',
          style: TextStyle(fontFamily: 'Syne'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            photoCar(),
            SizedBox(height: 10.0),
            inputPlaca(),
            SizedBox(height: 10.0),
            inputTitular(),
            SizedBox(height: 10.0),
            inputTipo(),
            SizedBox(height: 10.0),
            inputContacto(),
            optionButtons(),
          ],
        ),
      ),
    );
  }

  Widget photoCar() {
    return Container(
      width: _screenSize.width * 1,
      height: _screenSize.height * 0.3,
      padding: EdgeInsets.all(20),
      child: Card(
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Image.network(
          'https://elcomercio.pe/resizer/s0rUMOxsfh2zW-B61TuQEoLm5u8=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/ANDSIJFLKVF7RNUNKLZOEWZB3A.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget inputPlaca() {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        style: TextStyle(fontFamily: 'Syne', fontSize: 14.0),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: Color(0xFF6C63FF),
            contentPadding: EdgeInsets.all(10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF948EFD), width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6C63FF), width: 3.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Ejemplo: V8A-902',
            labelText: 'Placa del Vehiculo',
            labelStyle: TextStyle(color: Color(0xFF948EFD)),
            suffixIcon:
                Icon(Icons.featured_play_list, color: Color(0xFF948EFD)),
            suffixStyle: TextStyle(color: Color(0xFF948EFD))),
      ),
    );
  }

  Widget inputTitular() {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        style: TextStyle(fontFamily: 'Syne', fontSize: 14.0),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: Color(0xFF6C63FF),
            contentPadding: EdgeInsets.all(10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF948EFD), width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6C63FF), width: 3.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Ejemplo: Juan Perez Peredo Suarez',
            labelText: 'Nombre del Titular',
            labelStyle: TextStyle(color: Color(0xFF948EFD)),
            suffixIcon:
                Icon(Icons.perm_contact_calendar, color: Color(0xFF948EFD)),
            suffixStyle: TextStyle(color: Color(0xFF948EFD))),
      ),
    );
  }

  Widget inputTipo() {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        style: TextStyle(fontFamily: 'Syne', fontSize: 14.0),
        decoration: InputDecoration(
          fillColor: Color(0xFF6C63FF),
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF948EFD), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6C63FF), width: 3.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Ejemplo: Camioneta',
          labelText: 'Tipo de Vehiculo',
          labelStyle: TextStyle(color: Color(0xFF948EFD)),
          suffixIcon: Icon(Icons.category, color: Color(0xFF948EFD)),
        ),
      ),
    );
  }

  Widget inputContacto() {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        style: TextStyle(fontFamily: 'Syne', fontSize: 14.0),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Color(0xFF6C63FF),
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF948EFD), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6C63FF), width: 3.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Ejemplo: 991 636 984',
          labelText: 'Numero de Contacto',
          labelStyle: TextStyle(color: Color(0xFF948EFD)),
          suffixIcon: Icon(Icons.phone_android, color: Color(0xFF948EFD)),
        ),
      ),
    );
  }

  Widget optionButtons() {
    var saveButton = RoButton(
        initColor: Color(0xFF6C63FF),
        midColor: Color(0xFF948EFD),
        endColor: Color(0xFF6C63FF),
        txtButton: 'GUARDAR',
        action: 'action_save');

    var editButton = RoButton(
        initColor: Color(0xFF6C63FF),
        midColor: Color(0xFF948EFD),
        endColor: Color(0xFF6C63FF),
        txtButton: 'EDITAR',
        action: 'action_edit');

    var cancelButton = RoButton(
        initColor: Color(0xFF6C63FF),
        midColor: Color(0xFF948EFD),
        endColor: Color(0xFF6C63FF),
        txtButton: 'CANCELAR',
        action: 'action_cancel');
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              editButton,
              SizedBox(
                width: 20.0,
              ),
              cancelButton
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              saveButton,
            ],
          ),
        ],
      ),
    );
  }
}
