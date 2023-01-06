import 'package:assignment03/screens/notificationpage.dart';
import 'package:assignment03/screens/profilepage.dart';
import 'package:assignment03/screens/tabbarscreens/balancepage.dart';
import 'package:assignment03/screens/tabbarscreens/offerpage.dart';
import 'package:assignment03/screens/tabbarscreens/rewardspage.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  homefun(txt, colr1, colr2, imag) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.47,
      decoration:
          BoxDecoration(color: colr2, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.14,
            decoration: BoxDecoration(
                color: colr1, borderRadius: BorderRadius.circular(10)),
            child: Center(child: Image.asset('$imag')),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              '$txt',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  homfun2(imag, t) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 70,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 28, 41, 63),
              borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            '$imag',
          ),
        ),
        SizedBox(height: 4),
        Text(
          '$t',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 35, 35),
          title: ListTile(
              leading: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Image.asset('assets/appbarimage.png')),
              title: SizedBox(
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 89, 88, 88),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 89, 88, 88)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "    Search Users,ID's etc",
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  )),
              trailing: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
                  child: Image.asset('assets/notificationimg.png'))),
          bottom: TabBar(indicatorColor: Colors.grey, tabs: [
            Tab(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Tab(
              child: Text('Balance', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Offers', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Rewards', style: TextStyle(fontSize: 20)),
            )
          ]),
        ),
        backgroundColor: Colors.black,
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          'Money Transfer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 25,
                            width: MediaQuery.of(context).size.width * 0.17,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 35, 35, 35),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'More',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homefun('Scan QR Code', Color(0xff1e124f),
                          Color(0xff4b2570), 'assets/homebi1.png'),
                      homefun('Send to Contact', Color(0xff057861),
                          Color.fromARGB(255, 8, 87, 55), 'assets/homebi2.png')
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homefun(
                          'Send To Bank',
                          Color.fromARGB(255, 74, 100, 1),
                          Color.fromARGB(255, 66, 75, 25),
                          'assets/homebi3.png'),
                      homefun(
                          'Self Transfer',
                          Color(0xff91274c),
                          Color.fromARGB(255, 115, 18, 44),
                          'assets/homebi4.png')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          'Recharge & Bill Payments',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 25,
                            width: MediaQuery.of(context).size.width * 0.17,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 35, 35, 35),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'More',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homefun(
                          'MobileRecharge',
                          Color.fromARGB(255, 13, 106, 69),
                          Color.fromARGB(255, 31, 88, 3),
                          'assets/homebi5.png'),
                      homefun(
                          'Electricity Bill',
                          Color.fromARGB(255, 155, 59, 93),
                          Color.fromARGB(255, 102, 58, 145),
                          'assets/homebi6.png')
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homefun('DTH Recharge', Color(0xff7d5f07),
                          Color(0xff7d071f), 'assets/homebi7.png'),
                      homefun('Postpaid bill', Color.fromARGB(255, 67, 23, 110),
                          Color(0xff06407a), 'assets/homebi8.png')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Ticket Booking',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homfun2('assets/himag1.png', 'Movies'),
                      homfun2('assets/himag2.png', 'Trains'),
                      homfun2('assets/himag3.png', 'Bus'),
                      homfun2('assets/himag4.png', 'Flights'),
                      homfun2('assets/himag5.png', 'Car')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    child: Row(
                      children: [
                        Text(
                          'More Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      homfun2('assets/himag6.png', ' Invest'),
                      SizedBox(width: 13),
                      homfun2('assets/himag7.png', 'Loans'),
                      SizedBox(width: 13),
                      homfun2('assets/himag8.png', 'Insurance'),
                      SizedBox(width: 13),
                      homfun2('assets/himag9.png', 'Fastag'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Recent Transactions ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/home.png',
                    height: 80,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            Balance(),
            Offer(),
            Rewards()
          ],
        ),
      ),
    );
  }
}
