import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Cappuccino';
  List<ProductModel> product = [
    ProductModel(
      id: 1,
      image: 'assets/images/product_1.png',
      title: 'Cappucino',
      subbtitle: 'with Chocolate',
      price: 4.53,
      rate: 4.8,
    ),
    ProductModel(
      id: 2,
      image: 'assets/images/product_2.png',
      title: 'Cappucino',
      subbtitle: 'with Chocolate',
      price: 4.53,
      rate: 4.8,
    ),
    ProductModel(
      id: 3,
      image: 'assets/images/product_3.png',
      title: 'Cappucino',
      subbtitle: 'with Chocolate',
      price: 4.53,
      rate: 4.8,
    ),
    ProductModel(
      id: 4,
      image: 'assets/images/product_4.png',
      title: 'Cappucino',
      subbtitle: 'with Chocolate',
      price: 4.53,
      rate: 4.8,
    ),
  ];

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 60),
                  color: Colors.black,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'El-Minya, Egypt',
                                    style: TextStyle(
                                      color: Color.fromRGBO(221, 221, 221, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset('assets/images/profile.png'),
                        ],
                      ),
                      SizedBox(height: 26),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(49, 49, 49, 1),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(152, 152, 152, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search Coffee',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(152, 152, 152, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Image.asset('assets/images/option.png'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromRGBO(152, 152, 152, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  padding: EdgeInsets.only(left: 24, right: 24, top: 60),
                  color: Colors.white,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:
                              ['Cappuccino', 'Machiato', 'Latte', 'Americano']
                                  .map(
                                    (e) => InkWell(
                                      onTap: () => selectCategory(e),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 16,
                                        ),
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: selectedCategory == e
                                              ? Color.fromRGBO(198, 124, 78, 1)
                                              : Color.fromRGBO(
                                                  243,
                                                  243,
                                                  243,
                                                  1,
                                                ),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: selectedCategory == e
                                                ? Colors.white
                                                : Color.fromRGBO(0, 0, 0, 0.54),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                      Expanded(
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 0.6,
                              ),
                          children: [1, 2, 3, 4]
                              .map(
                                (p) => Container(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                    left: 8,
                                    right: 8,
                                    bottom: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            'assets/images/product_1.png',
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(height: 30, width: 8),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 16,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                '\$ 4.8',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Cappucino',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'With Chocolate',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            155,
                                            155,
                                            155,
                                            1,
                                          ),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$ 4.53',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailScreen(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'assets/images/add.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 200,
            left: 26,
            child: Image.asset('assets/images/bannar.png'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
        unselectedItemColor: Color.fromRGBO(141, 141, 141, 1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}
