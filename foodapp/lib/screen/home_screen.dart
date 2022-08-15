import 'package:flutter/material.dart';
import 'package:foodapp/data/data.dart';
import 'package:foodapp/models/restaurent.dart';
import 'package:foodapp/screen/drawer_demo.dart';
import 'package:foodapp/screen/recent_order.dart';
import 'package:foodapp/screen/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  buildRestaurant() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant reataurant) {
      restaurantList.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RestaurantScreen(
                      restaurant: reataurant,
                    )));
          },
          child: Container(

              // width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                              image: AssetImage('${reataurant.imageUrl}')),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${reataurant.name}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '${reataurant.address}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "0.5 Miles",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              )),
        ),
      ));
    });
    return Column(
      children: restaurantList,
    );
  }

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 184, 172),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Food Delivery"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              _drawer.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.account_circle,
              size: 30,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Cart(${currentUser.cart?.length})',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      key: _drawer,
      drawer: DrawerDemo(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Colors.deepOrangeAccent, width: 3)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 235, 211, 204),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepOrangeAccent, width: 3),
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    Icons.close,
                    color: Colors.black45,
                  )),
            ),
          ),
          RecentOrder(),
          Column(
            children: [
              Text(
                "Near Me Restaurant",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 97, 35, 16)),
              ),
              SizedBox(
                height: 8,
              ),
              buildRestaurant(),
            ],
          )
        ],
      ),
    );
  }
}
