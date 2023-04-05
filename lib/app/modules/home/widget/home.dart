import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/adm/'),
              child: const Text('ADM PAGE'),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/list/'),
              child: const Text('LIST PAGE'),
            ),
          ],
        ),
      ),
    );
  }
}
