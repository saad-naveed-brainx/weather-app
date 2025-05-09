import 'package:flutter/material.dart';
import 'package:weather/views/get_started.dart';
import 'package:provider/provider.dart';
import 'package:weather/viewmodels/change_notifier_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GetStarted());
  }
}
