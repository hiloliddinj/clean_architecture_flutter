import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../navigation/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigation();
  }

  Future navigation() async{
    await Future.delayed(const Duration(seconds: 1), () {
      AutoRouter.of(context).push(const AuthPhoneScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(
            child: Center(
              child: Text('Logo'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            child: Text('Some Slogan'),
          )
        ],
      ),
    );
  }
}
