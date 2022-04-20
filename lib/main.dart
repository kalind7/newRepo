import 'package:flutter/material.dart';
import 'package:holiday_lodges/home_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HolidayLodges());
}

class HolidayLodges extends StatelessWidget {
  const HolidayLodges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
