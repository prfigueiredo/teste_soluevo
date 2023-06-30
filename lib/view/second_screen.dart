import 'package:flutter/material.dart';
import 'package:teste_soluevo/controller/controller.dart';

class SecondScreen extends StatelessWidget {
  final String text;

  SecondScreen({super.key, required this.text});

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    Map<String, int> wordCount = controller.countWords(text);

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado:'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: wordCount.length,
          itemBuilder: (context, index) {
            String word = wordCount.keys.elementAt(index);
            int count = wordCount[word]!;

            return ListTile(
              title: Text('$word'),
              subtitle: Text('$count'),
            );
          },
        ),
      ),
    );
  }


}