import 'package:flutter/material.dart';
import 'package:jeat_restaurant_app/config/app_config.dart' as config;
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: config.Colors().mainColor(1)
            ),
            child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Image.asset('assets/images/jeat_temp_logo.png'),
                        Container(
                            width: 120,
                            child: LinearProgressIndicator(
                                backgroundColor: Theme.of(context).primaryColor,
                            ),
                        )

                    ],
                ),
            ),
        )
    );
  }
}
