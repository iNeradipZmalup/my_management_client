import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_management_client/common/app_color.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.primary,
        scaffoldBackgroundColor: AppColor.surface,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
          surface: AppColor.surface,
          surfaceContainer: AppColor.surfaceContainer,
          error: AppColor.error,
        ),
        textTheme: GoogleFonts.interTextTheme(),
        shadowColor: AppColor.primary.withValues(alpha: 0.3),
      ),
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
