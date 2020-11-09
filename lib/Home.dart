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
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: Column(
        children: [
          Align(alignment: Alignment.topCenter, child: profileImage(context))
        ],
      ),
    );
  }
}
