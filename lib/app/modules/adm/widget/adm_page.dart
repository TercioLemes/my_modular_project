import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdmPage extends StatelessWidget {
  const AdmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Modular.to.path == '/adm/') {
      Modular.to.navigate('./produtos');
    }
    return Scaffold(
        appBar: AppBar(title: const Text('ADM Page')),
        body: Row(
          children: [
            const Flexible(flex: 1, child: Leading()),
            Container(width: 2, color: Colors.black45),
            const Flexible(flex: 4, child: RouterOutlet()),
          ],
        ));
  }
}

class Leading extends StatelessWidget {
  const Leading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            title: Text('PRODUTO'),
            onTap: () => Modular.to.navigate('produtos'),
          ),
          ListTile(
            title: Text('CADASTRO'),
            onTap: () => Modular.to.navigate('cadastro'),
          ),
          ListTile(
            title: Text('USER'),
            onTap: () => Modular.to.navigate('user'),
          ),
          ListTile(
            title: Text('HOME'),
            onTap: () => Modular.to.navigate('/'),
          ),
          ListTile(
            title: Text('List'),
            onTap: () => Modular.to.navigate('/list/'),
          ),
        ],
      ),
    );
  }
}
