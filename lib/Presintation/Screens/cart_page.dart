import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/Presintation/Widgets/SharedWidgets/custom_add_button.dart';
import '../../Core/Utils/assets_manager.dart';
import '../Widgets/Cart page Widgets/dot_controller.dart';
import '../Widgets/Cart page Widgets/product_container.dart';
import '../Widgets/Cart page Widgets/slider_container.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    int currentPage = 0;
  
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
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
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dog Treats Stick",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Quisque velit est, sagittis at tellus eget, feugiat an congue\nlacus. In nibh elit, rhoncus id tempor eget, aliquam sed est. Sed\neu felis metus. Maecenas one vulputate erat a facilisis dictum",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 170,
                aspectRatio: 10,
                viewportFraction: 0.8,
                initialPage: currentPage,
                onPageChanged: (int i, CarouselPageChangedReason r) {
                  setState(() {
                    currentPage = i;
                  });
                },
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                pauseAutoPlayOnTouch: true,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 4,
              carouselController: buttonCarouselController,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      const SliderContainer(),
            ),
            const SizedBox(
              height: 10,
            ),
            DotController(currentPage: currentPage),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "More Products",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => const ProductContainer(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5),
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            )),
                        const Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.minimize,
                              color: Colors.white,
                              size: 20,
                            )),
                      ],
                    )),
                const Spacer(),
                const Text(
                  "26,000,000",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomAddButton( text: "ADD TO CART", ontap: () {})
          ],
        ),
      ),
    );
  }
}
