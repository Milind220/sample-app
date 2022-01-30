import 'package:flutter/material.dart';
import '../components/normalbutton.dart';
import '../components/crisisbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/png_logo.png'),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 75.0),
                  child: NormalButton(
                      buttonText: 'Login',
                      onClickFunc: () => {
                            Navigator.pushNamed(context, '/feed'),
                          }))
            ],
          )),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}
