class ProductModel {
  ProductModel({
    this.title,
    this.price,
    this.star,
    this.option,
    this.image,
  });

  String? title;
  String? price;
  double? star;
  String? image;
  List<String>? option;

  ProductModel copyWith({
    String? title,
    String? price,
    double? star,
    List<String>? option,
    String? image,
  }) =>
      ProductModel(
        title: title ?? this.title,
        price: price ?? this.price,
        star: star ?? this.star,
        option: option ?? this.option,
        image: image ?? this.image,
      );
}
