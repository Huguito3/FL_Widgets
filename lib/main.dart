import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//import 'package:components/src/pages/home_temp.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('es'),
          const Locale('pt')
        ],
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        initialRoute: 'home',
        routes: getApplicattionRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          print('On genereated Route ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
