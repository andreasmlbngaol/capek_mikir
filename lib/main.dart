import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppStateProvider(),
      child: MaterialApp.router(
        title: "Capek Mikir",
        theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        routerConfig: createRouter(),
          debugShowCheckedModeBanner: false,
      )
    );
  }
}
