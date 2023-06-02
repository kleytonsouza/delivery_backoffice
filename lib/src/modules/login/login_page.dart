import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
             // margin: const EdgeInsets.only(bottom: 25),
              height: context.screenHeight,
              width: context.screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/homo_2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Container(
          //   width: context.screenShortesSide * .2,
          //   padding: EdgeInsets.only(top: context.percentHeight(.10)),
          //   child: Image.asset('assets/images/logo.png'),
          // ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                constraints: BoxConstraints(
                  maxWidth: context.percentWidth(screenWidth < 1300 ? .7 : .3),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FractionallySizedBox(
                        widthFactor: .3,
                        child: Image.asset('assets/images/ico_ufpr2.png'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Solicitar Evento',
                          style: context.textStyles.textTitle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Usuário'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Senha'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () => {},
                          child: const Text('Entrar'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
