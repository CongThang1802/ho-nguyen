class News {
  final int id;
  final int catid;
  final String listcatid;
  final int topicid;
  final int adminId;
  final String author;
  final int sourceid;
  final int addtime;
  final int edittime;
  final int status;
  final int weight;
  final int publtime;
  final int exptime;
  final int archive;
  final String title;
  final String alias;
  final String hometext;
  final String homeimgfile;
  final String homeimgalt;
  final int homeimgthumb;
  final int inhome;
  final String allowedComm;
  final int allowedRating;
  final int externalLink;
  final int hitstotal;
  final int hitscm;
  final int totalRating;
  final int clickRating;
  final int instantActive;
  final String instantTemplate;
  final int instantCreatauto;

  News(
      {required this.id,
      required this.catid,
      required this.listcatid,
      required this.topicid,
      required this.adminId,
      required this.author,
      required this.sourceid,
      required this.addtime,
      required this.edittime,
      required this.status,
      required this.weight,
      required this.publtime,
      required this.exptime,
      required this.archive,
      required this.title,
      required this.alias,
      required this.hometext,
      required this.homeimgfile,
      required this.homeimgalt,
      required this.homeimgthumb,
      required this.inhome,
      required this.allowedComm,
      required this.allowedRating,
      required this.externalLink,
      required this.hitstotal,
      required this.hitscm,
      required this.totalRating,
      required this.clickRating,
      required this.instantActive,
      required this.instantTemplate,
      required this.instantCreatauto});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      catid: json['catid'],
      listcatid: json['listcatid'],
      topicid: json['topicid'],
      adminId: json['admin_id'],
      author: json['author'],
      sourceid: json['sourceid'],
      addtime: json['addtime'],
      edittime: json['edittime'],
      status: json['status'],
      weight: json['weight'],
      publtime: json['publtime'],
      exptime: json['exptime'],
      archive: json['archive'],
      title: json['title'],
      alias: json['alias'],
      hometext: json['hometext'],
      homeimgfile: json['homeimgfile'],
      homeimgalt: json['homeimgalt'],
      homeimgthumb: json['homeimgthumb'],
      inhome: json['inhome'],
      allowedComm: json['allowed_comm'],
      allowedRating: json['allowed_rating'],
      externalLink: json['external_link'],
      hitstotal: json['hitstotal'],
      hitscm: json['hitscm'],
      totalRating: json['total_rating'],
      clickRating: json['click_rating'],
      instantActive: json['instant_active'],
      instantTemplate: json['instant_template'],
      instantCreatauto: json['instant_creatauto'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['catid'] = this.catid;
    data['listcatid'] = this.listcatid;
    data['topicid'] = this.topicid;
    data['admin_id'] = this.adminId;
    data['author'] = this.author;
    data['sourceid'] = this.sourceid;
    data['addtime'] = this.addtime;
    data['edittime'] = this.edittime;
    data['status'] = this.status;
    data['weight'] = this.weight;
    data['publtime'] = this.publtime;
    data['exptime'] = this.exptime;
    data['archive'] = this.archive;
    data['title'] = this.title;
    data['alias'] = this.alias;
    data['hometext'] = this.hometext;
    data['homeimgfile'] = this.homeimgfile;
    data['homeimgalt'] = this.homeimgalt;
    data['homeimgthumb'] = this.homeimgthumb;
    data['inhome'] = this.inhome;
    data['allowed_comm'] = this.allowedComm;
    data['allowed_rating'] = this.allowedRating;
    data['external_link'] = this.externalLink;
    data['hitstotal'] = this.hitstotal;
    data['hitscm'] = this.hitscm;
    data['total_rating'] = this.totalRating;
    data['click_rating'] = this.clickRating;
    data['instant_active'] = this.instantActive;
    data['instant_template'] = this.instantTemplate;
    data['instant_creatauto'] = this.instantCreatauto;
    return data;
  }
}
