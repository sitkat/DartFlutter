import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/page_three.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Peter Mach',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Mind Deep Relax',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Play Session
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(3, 158, 162, 1),
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(13),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Play Next Session',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // First list item
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(47, 128, 237, 1),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sweet Memories',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'December 29 Pre-Launch',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 45,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 239, 238, 238),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Second list item
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(3, 158, 162, 1),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'A Day Dream',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'December 29 Pre-Launch',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 45,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 239, 238, 238),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Third list item
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(240, 146, 53, 1),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Mind Explore',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'December 29 Pre-Launch',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 45,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 239, 238, 238),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
