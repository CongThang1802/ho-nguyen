class Promotion {
  int? storeid;
  int? catid;
  String? title;
  String? hometext;
  String? detailtext;
  String? image1;
  String? image2;
  int? active;
  int? weight;

  Promotion(
      {this.storeid,
      this.catid,
      this.title,
      this.hometext,
      this.detailtext,
      this.image1,
      this.image2,
      this.active,
      this.weight});

  Promotion.fromJson(Map<String, dynamic> json) {
    storeid = json['storeid'];
    catid = json['catid'];
    title = json['title'];
    hometext = json['hometext'];
    detailtext = json['detailtext'];
    image1 = json['image1'];
    image2 = json['image2'];
    active = json['active'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['storeid'] = this.storeid;
    data['catid'] = this.catid;
    data['title'] = this.title;
    data['hometext'] = this.hometext;
    data['detailtext'] = this.detailtext;
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['active'] = this.active;
    data['weight'] = this.weight;
    return data;
  }
}
