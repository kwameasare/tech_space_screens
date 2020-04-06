class forum_model {
  int id;
  String name;
  String category;
  String image;
  String body;
  bool isliked;
  String ttl;
  String residence;
  forum_model(
      {this.id,
      this.name,
      this.residence,
      this.category,
      this.body,
      this.ttl,
      this.isliked,
      this.image});
}
