import 'package:flutter/material.dart';
import 'package:ui_chat_gpt/pages/page_two.dart';

class PageOne extends StatefulWidget {
  static const String id = 'pageOne';

  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(5, 60, 2, 0.7),
      body: CustomStack(),
    );
  }
}


class CustomStack extends StatelessWidget {
  const CustomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Image(
          image: AssetImage('assets/images/img_background.png'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 10,
            ),
            const Image(
              image: AssetImage('assets/images/img_chat_gpt.png'),
              width: 158,
              height: 158,
            ),
            const Spacer(
              flex: 3,
            ),
            const Text(
              'Welcome To ChatGpt',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFF8BFF),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Text(
              "The dialogue format makes it possible for\n  ChatGPT to answer followup questions,\n    admit its mistakes, challenge incorrect\n       premises, and reject inappropriate\n                            requests.",
              style: TextStyle(
                  color: Color(0xFFFF8BFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(
              flex: 6,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageTwo.id);
              },
              child: Container(
                alignment: Alignment.center,
                height: 65,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: const Color(0xFFFF8BFF),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Try ChatGpt',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFF8BFF)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.east_rounded,
                      color: Color(0xFFFF8BFF),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ],
    );
  }
}
