import 'package:assignment03/screens/recievepage.dart';
import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 35, 35, 35),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Text(
                          'Cashbacks earned',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$507',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '+88 Rs This month',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Receive()));
                          },
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.84,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 64, 64, 64)),
                            child: Center(
                              child: Text(
                                'View your cashback history',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      'Scrachcards won',
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
                  Container(
                    height: 130,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 28, 41, 63),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    height: 130,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 28, 41, 63),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    height: 130,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 28, 41, 63),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      'Collect Rewards',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 31, 79),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/offerbackimage.png'),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset('assets/rewardimag1.png'),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Flat 50 off on food Delivery',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'on orders above 99 on Swaggy,Somato',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 149, 99, 116),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              'Collect Now',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 0, 37),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 76, 7, 88),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/offerbackimage.png'),
                          Image.asset('assets/rewardimag2.png'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '20% Cashback On Amason',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Upto Rs 150 Minimun Order 1000',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 149, 99, 116),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              'Collect Now',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 0, 37),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
