import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options : FirebaseOptions(
          apiKey:"AIzaSyCKTnRv5vL2yb2FdNdU_D3I4qBQJfK1Oho",
          appId:"1:220078685376:android:a6c5501fdd530944fd0125",
          messagingSenderId : "220078685376",
          projectId:"flash-chat-39aa2"
    ),
  );
 runApp( FlashChat());
}

class FlashChat extends StatelessWidget {
 // const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home:  WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) =>  WelcomeScreen (),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        ChatScreen.id:(context) =>  ChatScreen()

      },
    );
  }
}
