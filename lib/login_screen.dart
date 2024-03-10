import'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             InkWell(
                onTap: () async{
                SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString('Name' , 'babar');
                  sp.setInt('age', 25);
                  sp.setBool('Login', false);
                  print(sp.getBool('Login'));
                  print(sp.getString('Name'));
                  print(sp.getInt('age').toString());



                  },
               child: Container(
                 height: 50,
                 width: double.infinity,
                 color: Colors.green,
                 child: Center(
                   child: Text("Click for store user data"),
                 ),
               ),
             )
           ],
        ),
      )
    );
  }
}
