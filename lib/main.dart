import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'screens/HomeScreen/provider/HomeProvider.dart';
import 'screens/HomeScreen/view/HomePage.dart';
import 'utils/SplashPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/' : (context) => SplashPage(),
            'Home' : (context) => HomeScreen(),
          },
        ),
      )
  );
}
