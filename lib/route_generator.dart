import 'package:flutter/material.dart';
import 'main.dart';
import 'package:jeat_restaurant_app/src/pages/splash_screen.dart';
import 'package:jeat_restaurant_app/src/pages/login.dart';
import 'package:jeat_restaurant_app/src/pages/register.dart';

class RouteGenerator{

    static Route<dynamic> generateRoute(RouteSettings settings) {
        final args = settings.arguments;

        switch(settings.name){
            case '/':
                return MaterialPageRoute(builder: (_) => SplashScreen());
            case '/login':
                return MaterialPageRoute(builder: (_) => Login());
            case '/register':
                return MaterialPageRoute(builder: (_) => Register());
            default:
                return _errorRoute();
        }
    }

    static Route<dynamic> _errorRoute() {
        return MaterialPageRoute(builder: (_) {
            return Scaffold(
                appBar: AppBar(
                    title: Text('Error'),
                ),
                body: Center(
                    child: Text('ERROR'),
                ),
            );
        });
    }
}
