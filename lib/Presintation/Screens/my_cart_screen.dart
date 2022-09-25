// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/Presintation/Widgets/SharedWidgets/custom_add_button.dart';

import '../../Core/Utils/assets_manager.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.black,
                      ))),
              const Spacer(),
              const Text(
                "My Cart",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Spacer(),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AssetsManager.trach,
                      ))),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const CartItemWidget(
              count: 1,
              itemName: "Dog Food",
              itemdesc: "Vivamus urna turpis, tempus ut",
              price: "25,000",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TotalCartWidget(
              amount: "Amount of Products :", price: "26,000,000"),
          const TotalCartWidget(amount: "Discount :", price: "1,000"),
          const TotalCartWidget(
            amount: "Total :",
            price: "25,000,000",
            isBold: true,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomAddButton(text: "Order Now", ontap: () {})
        ],
      ),
    );
  }
}

class TotalCartWidget extends StatelessWidget {
  final String amount;
  final String price;
  final bool isBold;
  const TotalCartWidget({
    Key? key,
    required this.amount,
    required this.price,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Text(
          amount,
          style: TextStyle(
              color: isBold ? Colors.black : Colors.grey,
              fontSize: 12,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        const Spacer(),
        Text(
          price,
          style: TextStyle(
              color: isBold ? Colors.black : Colors.grey,
              fontSize: 12,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      ]),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final int count;
  final String itemName;
  final String itemdesc;
  final String price;
  const CartItemWidget({
    Key? key,
    required this.count,
    required this.itemName,
    required this.itemdesc,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
        title: Text(
          itemName,
          style: const TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              itemdesc,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 166, 235, 87),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                              color: Colors.blue,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              )),
                        ),
                        Text(
                          count.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              )),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
