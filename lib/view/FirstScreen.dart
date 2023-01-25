import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentButton = 0;
  List buttonList01 = [
    'https://images.unsplash.com/photo-1515266591878-f93e32bc5937?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1580122468928-0e9940385cb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80',
    'https://images.unsplash.com/photo-1594069758873-e79e9075eb7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
  ];
  List buttonList02 = [
    'https://images.unsplash.com/photo-1670968982579-a0161d82234c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=80',
    'https://images.unsplash.com/photo-1670968981833-e028025124a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=391&q=80',
    'https://images.unsplash.com/photo-1670968982568-51116a0770c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=663&q=80',
  ];
  List buttonList03 = [
    'https://images.unsplash.com/photo-1670968982568-51116a0770c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=663&q=80',
    'https://images.unsplash.com/photo-1670968982568-51116a0770c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=663&q=80',
    'https://images.unsplash.com/photo-1670968982568-51116a0770c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=663&q=80',
  ];

  List mainList = [];

  @override
  void initState() {
    mainList = buttonList01;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.black,
              )
            ],
          ),
          Column(
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
                      icon: Icon(Icons.menu),
                      color: currentButton == 1 ? Colors.orange : Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentButton = 2;
                        });
                      },
                      icon: Icon(Icons.search),
                      color: currentButton == 2 ? Colors.orange : Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 50, bottom: 35),
                child: Text(
                  ' Explore \n the World',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mainList.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return RotatedBox(
                          quarterTurns: 3,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 30, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentButton = 2;
                                      mainList = buttonList03;
                                    });
                                  },
                                  child: Text(
                                    'Mountains',
                                    style: TextStyle(
                                        color: currentButton == 2
                                            ? Colors.amber
                                            : Colors.grey,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentButton = 1;
                                      mainList = buttonList01;
                                    });
                                  },
                                  child: Text(
                                    'Holidays',
                                    style: TextStyle(
                                        color: currentButton == 1
                                            ? Colors.amber
                                            : Colors.grey,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentButton = 0;
                                      mainList = buttonList02;
                                    });
                                  },
                                  child: Text(
                                    'Travel',
                                    style: TextStyle(
                                        color: currentButton == 0
                                            ? Colors.amber
                                            : Colors.grey,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(20),
                                width: 280,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      mainList[index - 1],
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                'Mountain',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.amber),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, bottom: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    'Mountain',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
