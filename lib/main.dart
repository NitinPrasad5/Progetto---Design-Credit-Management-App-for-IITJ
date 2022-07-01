import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/drawerscreen.dart';
import 'screens/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Progetto',
      home: HomePage(),
      // home: Scaffold(
      //   body: Stack(
      //     children: [
      //       DrawerScreen(),
      //       HomeScreen(),
      //     ],
      //   ),
      // ),
    );
  }
}




