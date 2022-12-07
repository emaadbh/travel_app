import 'package:flutter/material.dart';
import 'package:travel/component/home_card_widget.dart';
import 'package:travel/model/product_model.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .map(
            (e) => HomeCardWidget(
              data: e,
            ),
          )
          .toList(),
    );
  }
}

List<ProductModel> data = [
  ProductModel(
    title: "The grand canyon",
    price: "145",
    image:
        "https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg",
    star: 5.0,
    option: [
      "History, Cultural",
      "2 Tours in Asia",
      "1 person",
    ],
  ),
  ProductModel(
    title: "Bali Tourism",
    price: "60",
    image:
        "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
    star: 2.0,
    option: [
      " Cultural",
      "1 Tours in Asia",
      "1 person",
    ],
  ),
  ProductModel(
    title: "costa Rica Tourism",
    image:
        "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
    price: "20",
    star: 3.0,
    option: [
      "History",
      "3 Tours",
      "1 person",
    ],
  ),
  ProductModel(
    title: "The grand canyon",
    image:
        "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
    price: "145",
    star: 5.0,
    option: [
      "History, Cultural",
      "2 Tours in Asia",
      "1 person",
    ],
  )
];
