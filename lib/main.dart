import 'package:flutter/material.dart';

void main() {
  runApp(const CarCraft());
}

class CarCraft extends StatelessWidget {
  const CarCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xff19254b),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              TopSection(),
              CounterSection(),
              DataBaseSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
            width: 54,
            height: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 30),
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class CounterSection extends StatelessWidget {
  const CounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            height: 105,
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 150,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class DataBaseSection extends StatelessWidget {
  const DataBaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.white,
      ),
    );
  }
}
