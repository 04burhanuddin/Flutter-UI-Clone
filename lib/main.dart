import 'package:flutter/material.dart';
import 'package:flutter_ui_clone/whatsapp/shared/color_constants.dart';
import 'package:flutter_ui_clone/whatsapp/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(onBackground: Colors.blue, seedColor: gray),
        useMaterial3: true,
      ),
      home: const WhatsAppExample(),
    );
  }
}
