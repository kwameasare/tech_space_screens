class post_model {
  int id;
  String name;
  String category;
  String image;
  String status;
  bool isliked;
  String residence;
  post_model(
      {this.id,
      this.name,
      this.residence,
      this.category,
      this.status,
      this.isliked,
      this.image});
}
