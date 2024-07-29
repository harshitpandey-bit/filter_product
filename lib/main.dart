import 'package:filterproduct/utils/Route%20Utils.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const TeamVaultApp());
}

class TeamVaultApp extends StatelessWidget {
  const TeamVaultApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: RouteUtils.routes,
    );
  }
}
