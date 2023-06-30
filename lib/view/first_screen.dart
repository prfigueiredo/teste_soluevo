import 'package:flutter/material.dart';
import 'package:teste_soluevo/controller/controller.dart';
import 'package:teste_soluevo/view/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png'),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: controller.textController,
                  decoration: InputDecoration(
                    hintText: 'Digite uma frase',
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          text: controller.textController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('OK'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
