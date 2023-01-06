import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  balancfun(colr, tex1, tex2, tex3) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width * 0.40,
      decoration:
          BoxDecoration(color: colr, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$tex1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 8),
            child: Text(
              '$tex2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            '$tex3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 13),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 35, 35, 35),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    'Portfolio Value',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      '\$54,375',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'In 3 Accounts',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Image.asset('assets/balancei2.png')
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            balancfun(Color(0xff6e0a42), 'Federel Bank',
                                '1142524899652', '16,456.05'),
                            balancfun(Color(0xff4b1f8c), 'States Bank',
                                '1142524899652', '2045.05'),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 11, top: 12, right: 10),
                          child: Row(
                            children: [
                              balancfun(Color(0xff265c08), 'Best Bank',
                                  '1142521547852', '35873.5'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 64, 64, 64)),
                          child: Center(
                            child: Text(
                              'Add / Manage Accounts',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
