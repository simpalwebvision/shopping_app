import 'package:flutter/material.dart';
import 'package:livingliquidz/screens/cart.dart';
import 'package:livingliquidz/screens/likes.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
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
                    MaterialPageRoute(builder: (context) => LikesScreen()));
              },
              icon: (Icon(Icons.favorite))),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: (Icon(Icons.shopping_cart))),
          SizedBox(
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
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Color.fromARGB(255, 155, 57, 235),
                  Colors.black
                ])),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                        padding: const EdgeInsets.all(8.0),
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
                //Navigator.push(context,
                // MaterialPageRoute(builder: (context) => AboutPage()));
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
                //  Navigator.push(context,
                //  MaterialPageRoute(builder: (context) => ContactUs()));
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "Originally founded in 1970, Living Liquidz is recognized as one of the foremost family owned brands in the country. It all began with Mr. Sani, the originator and a mechanical engineer who started up with the first store at Sion, Mumbai in 1973.Today Sani group has 50 plus stores across various spheres including high streets, malls and airports which is now spearheaded by his two sons Manish and Moksh Sani. This success is the outcome of unwavering practices to honor traditional values, a passion for quality, and a respect for mature, fine and strong lasting relationship.With a reach of 50 plus store and counting this is what distinguish Living Liquidz, we’ve the whole city covered from Churchgate to Vasai and Thane to Vashi, we’ve set our sights to becoming number one in the country and soon we shall be on everyone’s mind globally.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Us:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.email)),
            SizedBox(height: 8.0),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.facebook)),
            SizedBox(height: 8.0),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.phone))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutUsPage(),
  ));
}
