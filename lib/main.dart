import 'package:flutter/material.dart';
import 'package:layouts/configs/app_configs.dart';

import 'package:layouts/widgets/home/home_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfigs["title"] ?? "",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appConfigs["title"] ?? ""),
      ),
      body: const Center(child: HomeContent()),
    );
  }
}
