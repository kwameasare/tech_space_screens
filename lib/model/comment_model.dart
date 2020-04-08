class comment_model {
  int id;
  String comment;
  String category;
  String image;
  String body;
  bool isliked;
  String ttl;
  String residence;
  comment_model(
      {this.id,
      this.comment,
      this.residence,
      this.category,
      this.body,
      this.ttl,
      this.isliked,
      this.image});
}
