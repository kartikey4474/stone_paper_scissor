import 'package:flutter/material.dart';
import 'package:stone_paper_whatever/widgets/navigation_button.dart';
import '../widgets/modal_bottom.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 12, child: Image.asset('assets/hero.png')),
            NavigateButton(
              onPressed: () => Navigator.pushNamed(context, '/game'),
              title: 'PLAY WITH AI',
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  ModalBottom(context);
                },
                child: const Text(
                  "See the instruction ?",
                  style: kMeduimTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
