import 'package:flutter/material.dart';

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
