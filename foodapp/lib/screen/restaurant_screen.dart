import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import 'package:foodapp/models/restaurent.dart';

class RestaurantScreen extends StatefulWidget {
  Restaurant? restaurant;
  RestaurantScreen({this.restaurant});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 184, 172),
        body: Stack(
          children: [
            Column(
              children: [
                Image(
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: AssetImage('${widget.restaurant!.imageUrl}')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.restaurant?.name}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "0.5 Miles",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Text(
                        '${widget.restaurant?.address}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Review')),
                    ElevatedButton(onPressed: () {}, child: Text('Contact')),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  children:
                      List.generate(widget.restaurant!.menu!.length, (index) {
                    Food food = widget.restaurant!.menu![index];
                    return Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 175,
                            width: 175,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('${food.imageUrl}'))),
                          ),
                          Positioned(
                              // bottom: 20,
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '${food.name}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  '${food.price}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  }),
                ))
              ],
            ),
            Positioned(
                top: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 380,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.deepOrangeAccent,
                        size: 30,
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
