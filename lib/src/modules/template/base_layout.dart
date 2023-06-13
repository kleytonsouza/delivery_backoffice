import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import 'menu/menu_bar.dart' as menu;

class BaseLayout extends StatelessWidget {
  final Widget body;

  const BaseLayout({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    final shortestSide = context.screenShortesSide;
    final screenHeight = context.screenHeight;
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        child: Stack(
          children: [
            Container(
              color: context.colors.primary,
              constraints: BoxConstraints(
                minWidth: screenWidth,
                minHeight: shortestSide * .13,
                maxHeight: shortestSide * .13,
              ),
              alignment: Alignment.centerLeft,
              child: Container(
                width: shortestSide * .12,
                //height: shortestSide * .10,
                margin: EdgeInsets.only(left: 10, bottom: screenHeight * .03),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    '/images/logo_fcp_blue.png',
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: shortestSide * .10,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                  const menu.MenuBar(),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        color: Colors.grey[50],
                        child: body,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
