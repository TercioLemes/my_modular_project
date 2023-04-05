import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Erro ao encontrar'),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/'),
              child: const Text('GO TO HOME'),
            ),
          ],
        ),
      ),
    );
  }
}
