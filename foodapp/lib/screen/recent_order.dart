import 'package:flutter/material.dart';
import 'package:foodapp/data/data.dart';
import 'package:foodapp/models/order.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({Key? key}) : super(key: key);
  _buildRecentOrder(BuildContext, Order order) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 241, 116, 79)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                  height: double.infinity,
                  width: 120,
                  fit: BoxFit.cover,
                  image: AssetImage('${order.food?.imageUrl}')),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${order.food!.name}',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      '${order.restaurant!.name}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      '${order.food!.price}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Recent Order",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 96, 40, 23)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders?.length,
              itemBuilder: (context, index) {
                Order order = currentUser.orders![index];
                return _buildRecentOrder(context, order);
              }),
        )
      ],
    );
  }
}
