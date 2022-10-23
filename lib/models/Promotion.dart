class Promotion {
  final int storeid, active, catid, weight;
  final String title, hometext, detailtext, image1, image2;

  Promotion(
      {required this.storeid,
      required this.catid,
      required this.title,
      required this.hometext,
      required this.detailtext,
      required this.image1,
      required this.image2,
      required this.active,
      required this.weight});

  factory Promotion.fromJson(Map<String, dynamic> json) {
    return Promotion(
      storeid: json['storeid'],
      catid: json['catid'],
      title: json['title'],
      hometext: json['hometext'],
      detailtext: json['detailtext'],
      image1: json['image1'],
      image2: json['image2'],
      active: json['active'],
      weight: json['weight'],
    );
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
