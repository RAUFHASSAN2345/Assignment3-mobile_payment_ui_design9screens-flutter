import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  offerfunctn({colr, imag, tex1, tex2, tex3}) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration:
          BoxDecoration(color: colr, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(left: 25),
        child: Row(
          children: [
            Stack(
              children: [
                Image.asset('assets/offerbackimage.png'),
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset('$imag'),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$tex1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '$tex2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    '$tex3',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 15,
              ),
              offerfunctn(
                  colr: Color.fromARGB(255, 3, 31, 79),
                  imag: 'assets/offerimage1.png',
                  tex1: 'Mobile Recharge Offer',
                  tex2: 'Use Code FIRST20',
                  tex3:
                      'Get 20 % Instant cashback upto Rs 50 on your first mobile recharge.T&C apply'),
              SizedBox(
                height: 15,
              ),
              offerfunctn(
                  colr: Color.fromARGB(255, 76, 7, 88),
                  imag: 'assets/offerimage2.png',
                  tex1: 'DTH Recharge Offer',
                  tex2: 'Use Code FIRSDTHT20',
                  tex3:
                      'Get 20 % Instant cashback upto Rs 50 on your first DTH recharge.T&C apply'),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 48, 34, 28),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/offerbackimage.png'),
                          Padding(
                            padding: EdgeInsets.only(right: 14, top: 5),
                            child: Image.asset('assets/offerimage3.png'),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Flipcart Shopping Offer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              'Shop on Flipcart using our payment system to get upto 50% cashback.T&C apply',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Image.asset('assets/offerimage4.png'),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Money Transfer Offer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              'Get a scratch card with assuerd cashback and coupons on Money Transfer of Rs 500 or more.T&C apply',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset('assets/offerimage5.png'),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rs 50 Off on Flights',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              'Get instant discount on flat 50 Rs on Flight ticket booking.T&C apply',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Go to offer page',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
