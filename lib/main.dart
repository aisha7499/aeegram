import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teegram/firebase_options.dart';
import 'package:teegram/view/home_screen.dart';
import 'package:teegram/view/page_categorygrid.dart';
import 'package:teegram/view/registration_screen.dart';
 
 
 

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      
      home:HomeScreen());
    //  RegistrationScreen());
      // LoginScreen(),);
  }
}