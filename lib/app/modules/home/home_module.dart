import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_modular_project/app/modules/adm/adm_module.dart';
import 'package:my_modular_project/app/modules/home/widget/home.dart';
import 'package:my_modular_project/app/modules/list/list_module.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Home()),
        ModuleRoute('/adm', module: AdmModule()),
        ModuleRoute('/list', module: ListModule()),
      ];
}
