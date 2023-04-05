import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/'),
              child: const Text('BACK TO HOME'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/adm/'),
              child: const Text('ADM PAGE'),
            ),
          ],
        ),
      ),
    );
  }
}
