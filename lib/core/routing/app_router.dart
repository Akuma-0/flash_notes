import 'package:flash_notes/core/routing/routes.dart';
import 'package:flash_notes/features/add_note/ui/add_note_screen.dart';
import 'package:flash_notes/features/home/ui/home_screen.dart';
import 'package:flash_notes/features/on_boarding/ui/on_boardin_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardinScreen());
      case Routes.addNote:
        return MaterialPageRoute(builder: (_) => AddNoteScreen());
    }
    return null;
  }
}
