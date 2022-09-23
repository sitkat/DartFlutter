import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Meditate',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 40,
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
                height: 14,
              ),
              //Scroll menu
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color.fromRGBO(3, 158, 162, 1),
                      ),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'All',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromARGB(255, 219, 254, 255),
                      ),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'Bible In a Year',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 158, 162, 1),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromARGB(255, 219, 254, 255),
                      ),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'Dailies',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 158, 162, 1),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromARGB(255, 219, 254, 255),
                      ),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'Minutes',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 158, 162, 1),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromARGB(255, 219, 254, 255),
                      ),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'Noven',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 158, 162, 1),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //Image
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/page_three.jpg',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Texts
              const Text(
                'A Song of Moon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Start with the basics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Row for main activity
              Row(
                children: const [
                  Icon(Icons.favorite_outline),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '9 Sessions',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
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
                height: 14,
              ),
              // Upper row items
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/page_four.png',
                          width: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Texts
                      const Text(
                        'The Sleep Hour',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Ashna Mukherjee',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_outline,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '3 Sessions',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Color.fromARGB(255, 239, 238, 238),
                      ),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/page_four.png',
                          width: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Texts
                      const Text(
                        'Easy on the Mission',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Peter Mach',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_outline,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '5 minutes',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Color.fromARGB(255, 239, 238, 238),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Color.fromARGB(255, 239, 238, 238),
              ),
              const SizedBox(
                height: 10,
              ),
              // Lower row items
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/page_four.png',
                          width: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Texts
                      const Text(
                        'Relax with Me',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Amanda James',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_outline,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '3 Sessions',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Color.fromARGB(255, 239, 238, 238),
                      ),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/page_four.png',
                          width: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Texts
                      const Text(
                        'Sun and Energy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Micheal Hiu',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_outline,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '5 minutes',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Color.fromARGB(255, 239, 238, 238),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
