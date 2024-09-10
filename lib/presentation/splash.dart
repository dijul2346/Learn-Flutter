import 'package:flutter/material.dart';
import 'package:screen/presentation/todohome.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    navigator(context);
    super.initState();
  }

  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator(), Text('Loading')],
      ),
    );
  }

  Future navigator(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ScreenTodo()));
  }
}
