import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../router/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _checkLoginStatus();
    _setStatusBarColor();
    super.initState();
  }

  Future<void> _checkLoginStatus() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.main);
    });
  }

  void _setStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: null,
      body: Center(
        child: Image.asset(
          Images.splashLogo,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
