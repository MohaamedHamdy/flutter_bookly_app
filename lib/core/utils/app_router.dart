import 'package:bookly/features/home/presentation/views/book_details_screen.dart';
import 'package:bookly/features/home/presentation/views/home_screen.dart';
import 'package:bookly/features/search/presentation/views/search_screen.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:bookly/core/widgets/page_not_found.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {

  static const kHomeScreen = '/home';
  static const kBookDetails = '/bookDetails';
  static const kSearch = '/search';

  static Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
      case kHomeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
      case kBookDetails:
        return MaterialPageRoute(builder: (context) => const BookDetailsScreen(),);
      case kSearch:
        return MaterialPageRoute(builder: (context) => const SearchScreen(),);
    }
    return MaterialPageRoute(builder: (context) => const PageNotFound(),);}
}