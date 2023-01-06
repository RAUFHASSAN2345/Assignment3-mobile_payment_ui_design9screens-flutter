import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  funtn(tex1, tex2, tex3) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$tex1',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  '$tex2',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Text(
              '$tex3',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Spacer(),
        Image.asset('assets/notificationimg.png')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 35, 35, 35),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Notifications',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/notifcatnback.png',
                                    height: 27,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          funtn(
                              'Recharge Compeleted',
                              'Your last recharge on 9847229989 of 199 Rs has been succesfully completed.',
                              'May 20 - 12:32 Pm'),
                          SizedBox(
                            height: 30,
                          ),
                          funtn(
                              'Money Recieved',
                              'Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.',
                              'May 20 - 12:45 Pm'),
                          SizedBox(
                            height: 30,
                          ),
                          funtn(
                              'Offer Unblockd',
                              'You have an unlocked offer available go to offer section or tap to view the offer.',
                              'May 20 - 2:45 Pm'),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                'Recent Notifications',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
