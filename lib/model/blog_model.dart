class blog_model {
  int id;
  String name;
  String category;
  String image;
  String bgImg;
  String status;
  String ttl;
  bool isliked;
  String residence;
  blog_model(
      {this.id,
        this.name,
        this.residence,
        this.category,
        this.bgImg,
        this.status,
        this.ttl,
        this.isliked,
        this.image});
}
