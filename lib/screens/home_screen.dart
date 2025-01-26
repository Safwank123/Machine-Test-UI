import 'package:flutter/material.dart';
import 'package:flutter_intern_assignment/screens/filter_screen.dart';
import 'package:flutter_intern_assignment/widgets/custom_avatarwithlabel.dart';
import 'package:flutter_intern_assignment/widgets/custom_container.dart';
import 'package:flutter_intern_assignment/widgets/custom_product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset('assets/icons/logo-header 1.png')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/Group 1948764654.png'))
        ],
        leading: IconButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(),));},
          icon: Image.asset('assets/icons/Vector (11).png'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 194,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 165362.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Text(
                      "New Perfume\nCollection 2024",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 30,
                    child: Text(
                      "Choose perfect smell who like it",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  CustomAvatarWithLabel(
                    labelText: '   Home\nFragrances',
                    backgroundColor: Colors.white,
                    imagePath:
                        'assets/images/image-removebg-preview (7) 3 (1).png',
                  ),
                  CustomAvatarWithLabel(
                    labelText: ' Oud &\nBukhour',
                    backgroundColor: Colors.white,
                    imagePath:
                        'assets/images/image-removebg-preview (13) 1.png',
                  ),
                  CustomAvatarWithLabel(
                    labelText: 'Hair\nMust',
                    backgroundColor: Colors.white,
                    imagePath: 'assets/images/image-removebg-preview (9) 2.png',
                  ),
                  CustomAvatarWithLabel(
                    labelText: 'Bokhour',
                    imagePath: 'assets/images/Mask group (2).png',
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/Group 1948764661.png',
                      height: 37,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (13) 1 (1).png',
                      label: 'Trending',
                      title: 'Majesty',
                      subtitle: 'EDT',
                      price: 'KWD 128',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (9) 3.png',
                      label: 'Trending',
                      title: 'Bhakoor',
                      subtitle: 'Oud',
                      price: 'KWD 200',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (13) 1 (1).png',
                      label: 'Trending',
                      title: 'Majesty',
                      subtitle: 'EDT',
                      price: 'KWD 128',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (9) 3.png',
                      label: 'Trending',
                      title: 'Bhakoor',
                      subtitle: 'Oud',
                      price: 'KWD 200',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Featured Notes',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            CustomContainer(
              title: 'Woody Note',
              subtitle: 'Lorem Ipsum is simply dummy\n text of the printing.',
              imagePath: 'assets/images/Rounded Rectangle.png',
              iconPath: 'assets/images/Highlight_10.png',
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainer(
              title: 'Sandle Wood',
              subtitle: 'Lorem Ipsum is simply dummy\n text of the printing.',
              imagePath: 'assets/images/image-removebg-preview (3) 1.png',
              iconPath: 'assets/images/1231.png',
              containerColor: Color.fromRGBO(136, 66, 74, 1),
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainer(
              title: 'Cotton Candy',
              subtitle: 'Lorem Ipsum is simply dummy\n text of the printing.',
              imagePath: 'assets/images/image-removebg-preview (4) 1.png',
              iconPath: 'assets/images/Vector 33.png',
              containerColor: Color.fromRGBO(178, 85, 38, 1),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 390,
              width: 335,
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          'assets/images/image-removebg-preview (9) 2 (1).png',
                          height: 280,
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => const Icon(
                                    Icons.star,
                                    size: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text('4.5'),
                              const SizedBox(width: 35),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                color: Colors.purple.shade100,
                                child: Text(
                                  '20%OFF',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text(
                                  'Rose&Patchouli-150ML',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 270),
                                child: Text(
                                  'EDT',
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 250),
                                child: Text(
                                  'KWD128',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 55,
                              width: 290,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.shopping_bag, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 295,
              width: 500,
              color: Colors.white,
              child: Image.asset(
                'assets/images/Group 1948764902.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/Group 1948764661.png',
                      height: 37,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (13) 1 (1).png',
                      label: 'Trending',
                      title: 'Majesty',
                      subtitle: 'EDT',
                      price: 'KWD 128',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (9) 2 (1).png',
                      label: 'Trending',
                      title: 'Bhakoor',
                      subtitle: 'Oud',
                      price: 'KWD 200',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (13) 1 (1).png',
                      label: 'Trending',
                      title: 'Majesty',
                      subtitle: 'EDT',
                      price: 'KWD 128',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                  ProductCard(
                      imagePath:
                          'assets/images/image-removebg-preview (9) 4.png',
                      label: 'Trending',
                      title: 'Bhakoor',
                      subtitle: 'Oud',
                      price: 'KWD 200',
                      discount: '20% OFF',
                      rating: 4.5,
                      onAddToCart: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 295,
              width: 360,
              color: Colors.white,
              child: Image.asset(
                'assets/images/Rounded Rectangle (1).png',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/Group 1948764679.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/Group 1948764638.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/heart (7) 1.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user (9) 1.png'),
            label: '',
          ),
        ],
      ),
    );
  }
}
