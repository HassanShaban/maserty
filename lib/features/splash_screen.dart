import 'package:flutter/material.dart';
import 'package:maserty/features/land.dart';
import 'package:maserty/features/quraan/navigate_to_quran_screen.dart';
import 'package:maserty/features/quraan/quran_screen.dart';
import 'package:maserty/features/walk_through/walk_through.dart';
import 'package:maserty/utils/navigation_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> implements NavigateToQuranScreen,LandscapeMode {
  @override
  void initState() {

    Future.delayed(const Duration(seconds: 2)).then((val) {
      // navigateAndFinish(context, QuranScreen(navigateToQuranScreen: this,    landscapeMode: this,));
       navigateAndFinish(context, WalkThrough());
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Image.asset('assets/images/splash.png')
      ),
    );
  }

  @override
  jumpToQuranScreen() {
    // TODO: implement jumpToQuranScreen
    throw UnimplementedError();
  }

  @override
  void navigateToQuranScreen() {
    // TODO: implement navigateToQuranScreen
  }
}
