class comment_model {
  int id;
  String comment;
  String reply;
  String category;
  String no_replies;
  String image;
  String replyImg;
  bool has_reply;
  bool isliked;
  String ttl;
  String residence;
  comment_model(
      {this.id,
      this.comment,
      this.residence,
      this.reply,
      this.replyImg,
      this.category,
      this.has_reply,
      this.ttl,
      this.no_replies,
      this.isliked,
      this.image});
}
