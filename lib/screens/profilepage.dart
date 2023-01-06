import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 35, 35, 35),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/profileimg.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Elsa',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Image.asset('assets/profilei2.png'),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 10),
                                  child: Text(
                                    'Level 4 Ace Member',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                    Container(
                                      height: 5,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Lv 5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  child: Image.asset(
                                'assets/notifcatnback.png',
                                fit: BoxFit.fill,
                                height: 25,
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '1,208',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                height: 55,
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '726',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Points',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                height: 55,
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '8',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rank',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 103, 93, 93),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ]),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 103, 93, 93),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )
                                  ]),
                            ),
                            Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 103, 93, 93),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    )
                                  ]),
                            ),
                            Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 103, 93, 93),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 35, 35, 35),
                ),
                child: Column(
                  children: [
                    profile('assets/homebi8.png', "All Transactions"),
                    profile('assets/profileim2.png', 'Pending Transactions'),
                    profile('assets/profileim3.png', 'Refund status'),
                    ListTile(
                      leading: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Raise an issue',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                    profile('assets/profileim5.png', 'Help and Support'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 35, 35, 35),
                ),
                child: Column(
                  children: [
                    profile('assets/profileim2.png', 'About Us'),
                    profile('assets/profileim3.png', 'Terms and Conditions'),
                    ListTile(
                      leading: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Feedback',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

profile(imag, txt) {
  return ListTile(
    leading: Image.asset('$imag'),
    title: Text(
      '$txt',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios,
      color: Colors.white,
    ),
  );
}
