import 'package:appcomida/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Contraseña olvidada',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Porfavor ingresa tu dirección de email. Recibirás un link para crear una nueva contraseña via email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(40.0)), // BoxDecoration
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Ingresa tu email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          _showAlerta(context);
        },
        color: Theme.of(context).accentColor,
        child: Text(
          'Enviar',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ), // Text
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      )); // RaisedButton // Container
}

void _showAlerta(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0))), // Rounded RectangleBorder
          content: Container(
              height: 400,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('images/lock.png'),
                    width: 130,
                    height: 130,
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text('Tu contrasea ah sido restablecida',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text(
                        "En breve recibirás un email con un codigo para configurar una nueva contraseña",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0)),
                  ),
                  _doneButton(context)
                ],
              )),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        color: Theme.of(context).accentColor,
        child: Text(
          'Hecho',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ));
}
