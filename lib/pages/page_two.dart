import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  static const String id = 'pageTwo';

  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAA444654),
      appBar: AppBar(
        backgroundColor: const Color(0xAA444654),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 100),
            child: Container(
              height: 125,
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/img_user.png'),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'Wahat is UX Design',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            )),
      ),
      drawer: const CustomDrawer(),
      body: const CustomBody(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E1E),
      width: 237,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 15,),
            child: Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CupertinoIcons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "New Chat",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/images/imd_icon_message.png"),
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "What is UX Design",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/images/imd_icon_message.png"),
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Color Palettes",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 280,
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.trash,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Clear Conversation",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Upgrade to plus",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Dark Mode",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.update,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Updates and FAQs",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 428,
      width: 515,
      color: const Color(0xFF444654),
      child: Padding(
        padding: const EdgeInsets.only(top: 38, left: 23),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 35,
              width: 35,
              color: const Color(0xAA0FA47F),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage('assets/images/img_chat_gpt.png'),
                  width: 22,
                  height: 22,
                ),
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            Container(
              width: 347,
              height: double.infinity,
              child: const Text(
                """UX design, or user experience design, refers to the process of designing products or services that are intuitive, accessible, and easy to use for the end user. The goal of UX design is to create products and services that are useful, usable, and desirable, and that meet the needs and expectations of the user.
              
              
              
UX designers use a range of techniques and tools to understand the user's needs, behaviors, and preferences, and to create designs that are tailored to those needs.
They may conduct user research, create personas, develop wireframes and prototypes, conduct usability testing, and analyze user feedback in order to improve the user experience.
 """,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xAA444654),
      height: 288,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('assets/images/Vector.png'),
                    width: 18,
                    height: 18,
                  ),
                  Text(
                    'Regenrate Response',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment:  Alignment.center,
            height: 67,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.only(left: 20,right: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xAA444654),
            ),
            child: const TextField(
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              cursorWidth: 3.5,
              cursorColor: Colors.white,
              autofocus: true,
              decoration: InputDecoration(
                suffixIcon:
                    Image(image: AssetImage('assets/images/img_respons.png')),
                border: InputBorder.none,
              ),

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              SizedBox(
                width: 23,
              ),
              Text(
                'ChatGPT Mar 14 Version. ',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 13,decoration: TextDecoration.underline),
              ),
              Text(
                'Frre Resarrch Previwe.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
