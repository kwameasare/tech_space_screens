class event_model {
  int id;
  String name;
  String category;
  String image;
  String bgImg;
  String location;
  String description;
  String date;
  String rate;
  String ttl;
  String time;
  bool isliked;
  String residence;
  event_model(
      {this.id,
      this.name,
      this.residence,
      this.category,
      this.date,
      this.rate,
      this.time,
      this.ttl,
      this.location,
      this.description,
      this.bgImg,
      this.isliked,
      this.image});
}
