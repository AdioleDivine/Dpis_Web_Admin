import 'package:DpisWeb/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.20
            : MediaQuery.of(context).size.width * 0.20,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.20
            : MediaQuery.of(context).size.width * 0.20,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.transparent,
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  "https://res.cloudinary.com/divineadiole/image/upload/v1604939899/logodp_lynxck.png"),
              alignment: Alignment.center,
              fit: BoxFit.cover),
        ),
        duration: Duration(milliseconds: 30),
      );

  adminView(context) => AnimatedContainer(
        color: Colors.transparent,
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.60
            : MediaQuery.of(context).size.width * 0.30,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.60
            : MediaQuery.of(context).size.width * 0.50,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ADMIN LOGIN"),
            ),
            SizedBox(height: 40),
            TextField(),
            TextField(),
            FlatButton(onPressed: () {}, child: null)
          ],
        ),
        duration: Duration(milliseconds: 30),
      );
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.network(
                  "https://res.cloudinary.com/divineadiole/image/upload/v1604939899/logodp_lynxck.png"),
            ),
          ),
          Opacity(
            opacity: 0.9,
            child: Container(
              color: Colors.deepPurple[900],
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Column(children: [
                        profileImage(context),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        ),
                        adminView(context),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        ),
                      ]))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
