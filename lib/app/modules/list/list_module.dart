import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_modular_project/app/modules/list/widgets/second_page.dart';

class ListModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SecondPage()),
  ];

}