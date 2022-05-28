import 'dart:ui';
import 'package:appcomida/src/pages/login_page.dart';
import 'package:appcomida/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/background.jpeg',
          height: 1000,
          fit: BoxFit.cover,
        ),
        Container(
          child: BackdropFilter(
            // Hace un dregradado más obscuro en la imagen
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),

        /*  Container(
        decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover, //La imagen cubre toda la pantalla
            image: NetworkImage(// Imagen desde la web
                'https://images.pexels.com/photos/2233351/pexels-photo-2233351.jpeg'),
          )),
          child: BackdropFilter(
            // Hace un dregradado más obscuro en la imagen
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),*/
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('COMIDA RAPIDA DELIVERED', //Titulo del inicio
                  style: TextStyle(
                    //Estilo del texto de inicio
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  )),
            ),
            Container(
              width: 350.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text('Inicia sesión',
                      style: TextStyle(color: Colors.white, fontSize: 15.0))),
            ),
            Container(
              width: 350.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 30.0),
              child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text('Conectar con Facebook',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                      )
                    ],
                  )),
            )
          ],
        )
      ],
    ));
  }
}
