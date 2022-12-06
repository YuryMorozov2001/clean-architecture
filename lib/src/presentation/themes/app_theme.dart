import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        color: Colors.green[100],
      ),
      cardColor: const Color(0xFFE4FAE6),
    );
  }
}
