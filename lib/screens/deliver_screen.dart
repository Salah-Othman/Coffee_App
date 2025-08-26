import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/order.dart';

class DeliverScreen extends StatefulWidget {
  @override
  State<DeliverScreen> createState() => _DeliverScreenState();
}

class _DeliverScreenState extends State<DeliverScreen> {
  int counter = 0;
  double get price => counter * 5.53;
  double get deliveryFee => calculateDeliveryFee!;
  double get totalPayment => price + calculateDeliveryFee!;
  double? get calculateDeliveryFee {
    if (counter <= 0) {
      return 0.0;
    } else {
      return 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          'Order',
          style: TextStyle(
            color: Color.fromRGBO(47, 45, 44, 1),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 240, 240, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Deliver',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Pick Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(47, 45, 44, 1),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Jl. Kpg Sutoyo',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(48, 51, 54, 1),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(128, 128, 128, 1),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Color.fromRGBO(222, 222, 222, 1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit_calendar),
                          Text('Edit Address'),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Color.fromRGBO(222, 222, 222, 1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notes_outlined),
                          Text('Add Note'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Container(
                  width: 315,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 234, 1),
                  ),
                ),
                SizedBox(height: 31),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/order.png'),
                        SizedBox(width: 16),
                        Column(
                          children: [
                            Text(
                              'Cappucino',
                              style: TextStyle(
                                color: Color.fromRGBO(47, 45, 44, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'with Chocolate',
                              style: TextStyle(
                                color: Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (counter > 0) counter--;
                            });
                          },
                          child: Image.asset('assets/images/sub_counter.png'),
                        ),
                        SizedBox(width: 11.5),

                        Text(
                          '$counter',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 11.5),
                        InkWell(
                          onTap: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Image.asset('assets/images/add_counter.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 21),
                Container(
                  width: 375,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 234, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 51,
              width: 532,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color.fromRGBO(234, 234, 234, 1),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Discount.png'),
                  SizedBox(width: 12),
                  Text(
                    '1 Discount is applied',
                    style: TextStyle(
                      color: Color.fromRGBO(47, 45, 44, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //payment summary ===============================
                Text(
                  'Payment Summary',
                  style: TextStyle(
                    color: Color.fromRGBO(47, 45, 44, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 9),
                //Price =========================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '\$ ${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                //Delivery Fee ==================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Fee',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    Text(
                      '\$ ${deliveryFee.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 21),
                Container(
                  width: 315,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 234, 1),
                  ),
                ),
                SizedBox(height: 14),
                //Total Payment =================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '\$ ${totalPayment.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                //Order Button ==================================
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/money.png'),
                              SizedBox(width: 22),
                              Image.asset('assets/images/cash.png'),
                              SizedBox(width: 10),
                              Text(
                                '\$ ${totalPayment.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: Color.fromRGBO(47, 45, 44, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [Image.asset('assets/images/more.png')],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderScreen(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 315,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(198, 124, 78, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            'Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
