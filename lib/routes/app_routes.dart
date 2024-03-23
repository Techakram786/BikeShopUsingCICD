import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:my_bike_shop/views/description_screen.dart';
import 'package:my_bike_shop/views/details_screen.dart';
import 'package:my_bike_shop/views/home_screen.dart';
import 'package:my_bike_shop/views/shoping_cart/my_shopping_cart.dart';

import '../views/splash_screen.dart';
import 'app_routes_name.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=>SplashScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),
    GetPage(name: RoutesName.homeScreen,
        page: ()=>HomeScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),
    GetPage(name: RoutesName.detailsScreen,
        page: ()=>DetailsScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),
    GetPage(name: RoutesName.descriptionScreen,
        page: ()=>DescriptionScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

    GetPage(name: RoutesName.shoppingCartScreen,
        page: ()=>MyShoppingCartScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),


  ];
}