import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:capek_mikir/provider/user_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserStateProvider()),
          ChangeNotifierProxyProvider<UserStateProvider, AppStateProvider>(
            create: (context) => AppStateProvider(context.read<UserStateProvider>()),
            update: (context, userProvider, appState) {
              appState ??= AppStateProvider(userProvider);
              appState.restartQuiz(userProvider); // refresh quiz tiap kali user ganti data
              return appState;
            },
          ),
        ],
        child: MaterialApp.router(
          title: "Capek Mikir",
          theme: ThemeData(
              fontFamily: "Delius",
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color(0xFF01197E),
                  brightness: Brightness.light
              )
          ),
          darkTheme: ThemeData(
              fontFamily: "Delius",
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color(0xFF01197E),
                  brightness: Brightness.dark
              )
          ),
          routerConfig: createRouter(),
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
        )
    );
  }
}