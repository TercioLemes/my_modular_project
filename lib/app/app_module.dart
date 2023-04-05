import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_modular_project/app/modules/adm/adm_module.dart';
import 'package:my_modular_project/app/modules/adm/widget/adm_page.dart';
import 'package:my_modular_project/app/modules/adm/widget/internal_page.dart';
import 'package:my_modular_project/app/modules/home/home_module.dart';
import 'package:my_modular_project/app/widgets/not_found.dart';
import 'package:my_modular_project/app/modules/list/widgets/second_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: HomeModule(),
          transition: TransitionType.noTransition,
        ),
        WildcardRoute(
          child: (context, args) => NotFoundPage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
