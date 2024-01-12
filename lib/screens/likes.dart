import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:livingliquidz/drawer/ContactFormPage%20.dart';
import 'package:livingliquidz/drawer/about_drawer.dart';
import 'package:livingliquidz/modal/product.dart';
import 'package:livingliquidz/providers/favorite.dart';
import 'package:livingliquidz/screens/cart.dart';
import 'package:livingliquidz/widgets/empty_list.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    final FavoriteProvider provider = FavoriteProvider.of(context);
    final List<Product> favoriteList = provider.favoriteList;

    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              favoriteList.isEmpty
                  ? buildNoFavoriteItem(
                      context: context,
                      title: "No Favorite Item",
                      subtitle:
                          "Product added to your favorites will be shown here",
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: favoriteList.length,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      favoriteList.removeAt(index);
                                      // setState(() {});
                                      provider.updateFavorite();
                                    },
                                    backgroundColor: Colors.red,
                                    icon: Icons.delete,
                                    foregroundColor: Colors.white,
                                    label: 'Delete',
                                  ),
                                ],
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(10),
                                minVerticalPadding: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.grey.shade500,
                                    width: 1,
                                  ),
                                ),
                                leading: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.2),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Image.asset(
                                    favoriteList[index].image,
                                    width: 60,
                                  ),
                                ),
                                title: Text(favoriteList[index].name),
                                subtitle: Text(
                                  "\₹${favoriteList[index].price}",
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    provider
                                        .toggleFavorite(favoriteList[index]);
                                  },
                                  child: Icon(
                                    provider.isFavorite(favoriteList[index])
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        provider.isFavorite(favoriteList[index])
                                            ? Colors.red
                                            : Colors.black54,
                                  ),
                                ),
                                onTap: () {
                                  // Add any action you want to perform when the ListTile is tapped
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
