import 'package:flutter_modular/flutter_modular.dart';
import './home/home_page.dart';
import 'core/core_module.dart';
import 'login/login_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/login', module: LoginModule()),
        ChildRoute('/home', child: (context, args) => const HomePage()),
      ];
}
