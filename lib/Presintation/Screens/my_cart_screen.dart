// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/Presintation/Widgets/SharedWidgets/custom_add_button.dart';

import '../../Core/Utils/assets_manager.dart';
import '../Widgets/My Cart/cart_item_widget.dart';
import '../Widgets/My Cart/total_cart_widget.dart';

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



