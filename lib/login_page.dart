import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_test/test_background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 375,
          height: 378,
          child: Stack(
            children: [
              const TestBackground(),
              Positioned(
                top: 123,
                left: 24,
                child: Text(
                  'Вход',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Center(
                child: Container(
                  width: 327,
                  height: 348,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'Войти',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Войти'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
