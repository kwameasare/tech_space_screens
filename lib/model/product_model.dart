class product_model {
  int id;
  String name;
  String category;
  String image;
  String product_name;
  String bgImg;
  String condition;
  String residence;
  double price;
  bool isliked;
  bool isSelected;
  product_model(
      {this.id,
      this.name,
      this.condition,
      this.category,
      this.product_name,
      this.price,
      this.residence,
      this.bgImg,
      this.isliked,
      this.isSelected = false,
      this.image});
}
