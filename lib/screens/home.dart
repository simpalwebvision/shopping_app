import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:livingliquidz/data/all_products.dart';
import 'package:livingliquidz/drawer/ContactFormPage%20.dart';
import 'package:livingliquidz/drawer/about_drawer.dart';
import 'package:livingliquidz/modal/product.dart';
import 'package:livingliquidz/screens/cart.dart';
import 'package:livingliquidz/screens/customseacher.dart';
import 'package:livingliquidz/screens/likes.dart';
import 'package:livingliquidz/screens/splash_screen.dart';
import 'package:livingliquidz/widgets/categories.dart';
import 'package:livingliquidz/widgets/product_card.dart';

import '../dawa/screens/dashboard/dashboard_screen.dart';
import '../modal/models/category_model.dart';
import '../widgets/image_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isCategorySelected = 0;
  List imageList = [
    {"id": 2, "image_path": 'assets/images/1.png'},
    {"id": 1, "image_path": 'assets/images/2.jpg'},
    {"id": 2, "image_path": 'assets/images/3.jpg'},
    {"id": 2, "image_path": 'assets/images/4.jpg'},
    {"id": 1, "image_path": 'assets/images/5.png'},
    {"id": 2, "image_path": 'assets/images/6.jpg'},
    {"id": 2, "image_path": 'assets/images/7.jpg'},
    {"id": 2, "image_path": 'assets/images/8.jpg'},
    {"id": 2, "image_path": 'assets/images/6.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.red),
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset(
                'assets/images/dawa-daru.png',
                scale: 15,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomSearcher()));
                  },
                  icon: (const Icon(Icons.search, size: 25))),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LikesScreen()));
                  },
                  icon: (const Icon(Icons.favorite))),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()));
                  },
                  icon: (const Icon(Icons.shopping_cart))),
              const SizedBox(
                height: 20,
              ),
            ],
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                DrawerHeader(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                      Color.fromARGB(255, 155, 57, 235),
                      Colors.black
                    ])),
                    child: Container(
                      child: const Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.home),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'LIVINGLlQUDZ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            'Mumbai & Pune',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.collections),
                  title: const Text('Shop by Categories'),
                  onTap: () {
                    // Navigator.push(
                    //  context,
                    //  MaterialPageRoute(
                    //  builder: (context) => NewARRIVALDrawer()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info_sharp),
                  title: const Text('ABOUT US'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_bag),
                  title: const Text('Bulk Order'),
                  onTap: () {
                    //  Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => ContactUs()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_emergency),
                  title: const Text('CONTACT US'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactFormPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text(' Logout '),
                  onTap: () {
                    // AuthController.logOut();
                  },
                ),
              ],
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageTextWidget(
                        bgColor: const Color.fromARGB(255, 250, 115, 36),
                        imageString: "assets/images/caet1.png",
                        passedText: "DAWA",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()));
                        },
                      ),
                      ImageTextWidget(
                        bgColor: const Color.fromARGB(255, 250, 115, 36),
                        imageString: "assets/images/daer2.png",
                        passedText: "DARU",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                buildProductCategory(),
                Stack(
                  children: [
                    SizedBox(
                      height: size.height * 0.3,
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                scale: 3,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : const Color.fromARGB(255, 14, 13, 13)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 220),
                      child: Text(
                        "Best Selling Products",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                buildAllProducts(),
              ])),
            ],
          )),
    );
  }
}

List<CategoryModel> categoryList = [
  CategoryModel(
      image: "assets/images/NewPr.jpg",
      title: "New Arrival",
      tag: "New Arrival",
      index: 0),
  CategoryModel(
    image: "assets/images/solp.jpg",
    title: "Cigar & cig",
    tag: "Cigar & cig",
    index: 1,
  ),
  CategoryModel(
    image: "assets/images/spirits-hd.jpg",
    title: "Spirits",
    tag: "Spirits",
    index: 2,
  ),
  CategoryModel(
    image: "assets/images/wines-hd.jpg",
    title: "Wines",
    tag: "Wines",
    index: 3,
  ),
  CategoryModel(
    image: "assets/images/mixers-hd.jpg",
    title: "Soju",
    tag: "Soju",
    index: 4,
  ),
  CategoryModel(
    image: "assets/images/dau2.jpg",
    title: "Mixers",
    tag: "Mixers",
    index: 5,
  ),
  CategoryModel(
    image: "assets/images/spirits-hd.jpg",
    title: "Sake",
    tag: "Sake",
    index: 6,
  ),
  CategoryModel(
    image: "assets/images/whiskey.jpg",
    title: "Wines",
    tag: "Wines",
    index: 7,
  ),
];

buildProductCategory() {
  // return const SizedBox(
  //   child: Column(
  //     children: [
  //       Row(
  //         children: [
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/NewPr.jpg",
  //               title: "New Arrival",
  //               tag: "New Arrival",
  //               index: 0,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/solp.jpg",
  //               title: "Cigar & cig",
  //               tag: "Cigar & cig",
  //               index: 1,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/spirits-hd.jpg",
  //               title: "Spirits",
  //               tag: "Spirits",
  //               index: 2,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/wines-hd.jpg",
  //               title: "Wines",
  //               tag: "Wines",
  //               index: 3,
  //             ),
  //           ),
  //         ],
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(
  //         children: [
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/mixers-hd.jpg",
  //               title: "Soju",
  //               tag: "Soju",
  //               index: 0,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/dau2.jpg",
  //               title: "Mixers",
  //               tag: "Mixers",
  //               index: 1,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/spirits-hd.jpg",
  //               title: "Sake",
  //               tag: "Sake",
  //               index: 2,
  //             ),
  //           ),
  //           Expanded(
  //             child: CategoryCard(
  //               image: "assets/images/whiskey.jpg",
  //               title: "Wines",
  //               tag: "Wines",
  //               index: 3,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  // );
  return SizedBox(
    height: 95,
    child: ListView.separated(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var data = categoryList[index];
          return InkWell(
            child: CategoryCard(
                image: data.image,
                title: data.title,
                tag: data.tag,
                index: data.index),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: categoryList.length),
  );
}

Widget buildAllProducts() => SizedBox(
      height: 200,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final Product allProduct = AllProducts.allProducts[index];
            return ProductCard(product: allProduct);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: AllProducts.allProducts.length),
    );
