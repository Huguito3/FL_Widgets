
import 'package:components/src/pages/listView_page.dart';
import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/slider_page.dart';

Map <String, WidgetBuilder> getApplicattionRoutes(){
 return <String, WidgetBuilder>{
        'home':(BuildContext context) => HomePage() ,
        'alert':(BuildContext context) => AlertPage() ,
        'avatar':(BuildContext context) => AvatarPage() ,
        'card':(BuildContext context) => CardPage() ,
        'animatedContainer':(BuildContext context) => AnimatedContainerPage() ,
        'inputs': (BuildContext context) => InputPage(),
        'slider': (BuildContext context) => SliderPage(),
        'list': (BuildContext context) => ListaPage()
      };
}


 