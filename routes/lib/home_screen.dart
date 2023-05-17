import 'package:flutter/material.dart';
import 'package:routes/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a route App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                  'Node' : 'JS Modules',
                  'Flutter' : 'It is a amazing SDK maan',
                });
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                ),
              
              child: const Center(child: Text('Screen 1'))),
            ),
          ],
        ),
      ),
    );
  }
}