import 'package:bookly/features/home/presentation/views/book_details_screen.dart';
import 'package:bookly/features/home/presentation/views/home_screen.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
      case '/bookDetails':
        return MaterialPageRoute(builder: (context) => const BookDetailsScreen(),);
    }
    return MaterialPageRoute(builder: (context) => const SplashScreen(),);}
}