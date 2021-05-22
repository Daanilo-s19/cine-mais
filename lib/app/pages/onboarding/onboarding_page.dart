import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Text("Acessar cinema"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () => Get.toNamed(Routes.MANAGECINEMA),
        child: const Text('Gerenciar Cinemas'),
      ),
    );
  }
}
