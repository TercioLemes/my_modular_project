import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_modular_project/app/modules/adm/widget/adm_page.dart';
import 'package:my_modular_project/app/modules/adm/widget/internal_page.dart';

class AdmModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AdmPage(),
          children: [
            ChildRoute(
              '/produtos',
              child: (context, args) =>
                  const InternalPage(title: 'PRODUTOS', color: Colors.blue),
            ),
            ChildRoute(
              '/cadastro',
              child: (context, args) => const InternalPage(
                title: 'CADASTRO',
                color: Colors.redAccent,
              ),
            ),
            ChildRoute(
              '/user',
              child: (context, args) =>
                  const InternalPage(title: 'User', color: Colors.greenAccent),
            ),
          ],
          transition: TransitionType.noTransition,
        ),
      ];
}
