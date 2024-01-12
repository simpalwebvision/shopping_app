import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livingliquidz/dawa/models/grocery_item.dart';
import 'package:livingliquidz/dawa/screens/cart/cart_screen.dart';
import 'package:livingliquidz/dawa/screens/dashboard/dashboard_screen.dart';
import 'package:livingliquidz/dawa/screens/dashboard/dawa_favourite_screen.dart';
import 'package:livingliquidz/dawa/screens/home/grocery_featured_Item_widget.dart';
import 'package:livingliquidz/dawa/screens/home/home_banner_widget.dart';
import 'package:livingliquidz/dawa/screens/home/seacherdawa.dart';
import 'package:livingliquidz/dawa/screens/product_details/product_details_screen.dart';
import 'package:livingliquidz/dawa/styles/colors.dart';
import 'package:livingliquidz/dawa/widgets/grocery_item_card_widget.dart';
import 'package:livingliquidz/drawer/ContactFormPage%20.dart';
import 'package:livingliquidz/drawer/about_drawer.dart';
import 'package:livingliquidz/modal/models/category_screen.dart';
import 'package:livingliquidz/screens/likes.dart';
import 'package:livingliquidz/screens/main_screen.dart';
import 'package:livingliquidz/widgets/image_text_widget.dart';

class HomedawaScreen extends StatefulWidget {
  const HomedawaScreen({super.key});

  @override
  State<HomedawaScreen> createState() => _HomedawaScreenState();
}

class _HomedawaScreenState extends State<HomedawaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/dawa-daru.png',
            scale: 15,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SeacherDawa()));
              },
              icon: (const Icon(
                Icons.search,
                size: 25,
              ))),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DawaFavouriteScreen()));
              },
              icon: (const Icon(Icons.favorite))),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
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
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactFormPage()));
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
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
                                builder: (context) => const DashboardScreen()));
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
                                builder: (context) => MainScreen()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                buildProductCategory(),
                const SizedBox(
                  height: 20,
                ),
                HomeBanner(),
                const SizedBox(
                  height: 25,
                ),
                subTitle(
                  "NEW ARRIVAL",
                ),
                getHorizontalItemSlider(exclusiveOffers),
                const SizedBox(
                  height: 15,
                ),
                padded(subTitle("Best Selling")),
                getHorizontalItemSlider(bestSelling),
                const SizedBox(
                  height: 15,
                ),
                padded(subTitle("Omeprazole")),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 105,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      GroceryFeaturedCard(
                        groceryFeaturedItems[0],
                        color: const Color(0xffF8A44C),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GroceryFeaturedCard(
                        groceryFeaturedItems[1],
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                getHorizontalItemSlider(groceries),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItem> items) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: GroceryItemCardWidget(
              item: items[index],
              heroSuffix: "home_screen",
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
                groceryItem,
                heroSuffix: "home_screen",
              )),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Text(
          "See All",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          locationIconPath,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Simpal Yadav",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

buildProductCategory() {
  return const SizedBox(
    child: Column(
      children: [
        InkWell(
          child: Row(
            children: [
              Expanded(
                child: CategoryCard(
                  image: "assets/images/beverages_images/dawa2.jpg",
                  title: "Shadowcat",
                  tag: "Shadowcat",
                  index: 0,
                ),
              ),
              Expanded(
                child: CategoryCard(
                  image: "assets/images/beverages_images/dawa3.jpg",
                  title: "ZenZephyr",
                  tag: "ZenZephyr",
                  index: 1,
                ),
              ),
              Expanded(
                child: CategoryCard(
                  image: "assets/images/beverages_images/dawa4.jpg",
                  title: "AuroraPo",
                  tag: "AuroraPou",
                  index: 2,
                ),
              ),
              Expanded(
                child: CategoryCard(
                  image: "assets/images/beverages_images/dawa4.jpg",
                  title: "Galactic",
                  tag: "Galactic",
                  index: 3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: CategoryCard(
                image: "assets/images/beverages_images/DAWA1.jpg",
                title: "SolarStalker",
                tag: "SolarStalker",
                index: 0,
              ),
            ),
            Expanded(
              child: CategoryCard(
                image: "assets/images/beverages_images/dawa4.jpg",
                title: "EmberClaw",
                tag: "EmberClaw",
                index: 1,
              ),
            ),
            Expanded(
              child: CategoryCard(
                image: "assets/images/beverages_images/dawa5.jpg",
                title: "LunaLeop",
                tag: "LunaLeop",
                index: 2,
              ),
            ),
            Expanded(
              child: CategoryCard(
                image: "assets/images/beverages_images/dawa4.jpg",
                title: "BlazeBob",
                tag: "BlazeBob",
                index: 3,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
