import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/mqtt_service.dart';
import 'views/dashboard_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MqttService()..connect()),
      ],
      child: const HydroponicsApp(),
    ),
  );
}

class HydroponicsApp extends StatelessWidget {
  const HydroponicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hydroponics App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DashboardScreen(),
    );
  }
}

