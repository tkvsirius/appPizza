import 'package:first/DTO/transfer_data_product_dto.dart';
import 'package:first/home_page.dart';
import 'package:first/presentation/recept/recept_screen.dart';
import 'package:first/presentation/registration/registration_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String homePage = '/homepage_screen';
  static const String receptPage = '/recept_screen';
  static const String registrationPage = '/registration_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case receptPage:
        return MaterialPageRoute(builder: (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as ItemDataDTO;
          return ReceptScreen(
            description: args.description,
            listAssets: args.image,
            time: args.time,
          );
        });
      case registrationPage:
        return MaterialPageRoute(
          builder: (context) => RegistrationScreen(),
        );

      default:
        throw const FormatException('Route not found !');
    }
  }
}
