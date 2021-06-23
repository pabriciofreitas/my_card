import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const a = 'http://api.whatsapp.com/send?phone=5573999077821';
void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepOrange,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100.0, //child: Image.asset("image/imagem.jpg")
                    backgroundImage: AssetImage('image/imagem.jpg'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Pabricio Freitas",
                      style: TextStyle(
                          fontSize: 60.0,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Akronim')),
                  Text("ESTUDANTE DE FLUTTER - ADS",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro')),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: 310,
                    height: 5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                    color: Colors.white,
                    onPressed: () async => {
                      if (await canLaunch(a))
                        {await launch(a)}
                      //Aplicativo do whatsapp não instalado!!
                      else
                        {throw 'Clould not lounch $a'}
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 20,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          height: 30,
                          width: 8,
                        ),
                        Text("(73) 9 9907-7821",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    color: Colors.white,
                    onPressed: () async =>
                        {await launch("mailto:pabricio2000@gmail.com")},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          height: 30,
                          width: 8,
                        ),
                        Text("Pabricio2000@gmail.com",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
