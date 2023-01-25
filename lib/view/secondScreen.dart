import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ],
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentButton = 1;
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: currentButton == 1 ? Colors.orange : Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentButton = 2;
                        });
                      },
                      icon: Icon(Icons.more_vert),
                      color: currentButton == 2 ? Colors.orange : Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 40, bottom: 30),
                child: Text(
                  'Holidays\nPackages',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(20),
                              height: 230,
                              color: Colors.red,
                            ),
                            Text(
                              'Treckking',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 20),
                            ),
                            // vaki xa yes bata
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 250,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 250,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Sort By',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 250,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 250,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 250,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
