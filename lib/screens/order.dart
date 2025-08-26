import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/deliver_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/maps.png'),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/images/arowback.png'),
                    ),
                    Image.asset('assets/images/location.png'),
                  ],
                ),
              ),
              Positioned(
                top: 74,
                left: 40,
                child: Image.asset('assets/images/Vector1.png'),
              ),
              Positioned(
                top: 300,
                left: 10,
                child: Image.asset('assets/images/Vector2.png'),
              ),
              Positioned(
                top: 73,
                left: 190,
                child: Image.asset('assets/images/Vector3.png'),
              ),
              Positioned(
                top: 63,
                left: 220,
                child: Image.asset('assets/images/Vector4.png'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(height: 9.32),
                Container(
                  width: 44,
                  height: 5.39,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 234, 1),
                  ),
                ),
                SizedBox(height: 12.29),
                Text('10 minutes left'),
                SizedBox(height: 6),
                Text('Delivery to Jl. Kpg Sutoyo'),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 192, 126, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 70,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 192, 126, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 70,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 192, 126, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 70,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(234, 234, 234, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19),
                Container(
                  width: 315,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(234, 234, 234, 1),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/delivery.png'),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivered your order',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(48, 51, 54, 1),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'We deliver your goods to you in\nthe shortes possible time.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/man.png'),
                        SizedBox(width: 12),
                        Column(
                          children: [
                            Text(
                              'Johan Hawn',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(48, 51, 54, 1),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Personal Courier',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(128, 128, 128, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(children: [Image.asset('assets/images/call.png')]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
