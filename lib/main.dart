import 'package:flutter/material.dart';
import 'package:jeat_restaurant_app/route_generator.dart';
import 'config/app_config.dart' as config;
import 'config/themedata.dart' as themes;
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantBlocDelegate extends BlocDelegate{
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = RestaurantBlocDelegate();
  runApp(

      RestaurantApp()

  );
}


class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JEAT restaurant app',
      debugShowCheckedModeBanner: false,
      darkTheme: themes.lightTheme,
      theme: themes.darkTheme,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}