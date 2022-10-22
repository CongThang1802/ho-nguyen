class MemBerCart {
  int? userid;
  String? username;
  String? fullname;
  int? birthday;
  String? placeOfBirth;
  String? originState;
  int? parentid;
  String? usernameparent;
  String? precode;
  String? code;
  String? domain;
  String? email;
  String? homeAddress;
  String? currentAddress;
  String? mobile;
  String? numbercarrd;
  int? numcardtype;

  MemBerCart(
      {this.userid,
      this.username,
      this.fullname,
      this.birthday,
      this.placeOfBirth,
      this.originState,
      this.parentid,
      this.usernameparent,
      this.precode,
      this.code,
      this.domain,
      this.email,
      this.homeAddress,
      this.currentAddress,
      this.mobile,
      this.numbercarrd,
      this.numcardtype});

  MemBerCart.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    username = json['username'];
    fullname = json['fullname'];
    birthday = json['birthday'];
    placeOfBirth = json['place_of_birth'];
    originState = json['origin_state'];
    parentid = json['parentid'];
    usernameparent = json['usernameparent'];
    precode = json['precode'];
    code = json['code'];
    domain = json['domain'];
    email = json['email'];
    homeAddress = json['home_address'];
    currentAddress = json['current_address'];
    mobile = json['mobile'];
    numbercarrd = json['numbercarrd'];
    numcardtype = json['numcardtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['username'] = this.username;
    data['fullname'] = this.fullname;
    data['birthday'] = this.birthday;
    data['place_of_birth'] = this.placeOfBirth;
    data['origin_state'] = this.originState;
    data['parentid'] = this.parentid;
    data['usernameparent'] = this.usernameparent;
    data['precode'] = this.precode;
    data['code'] = this.code;
    data['domain'] = this.domain;
    data['email'] = this.email;
    data['home_address'] = this.homeAddress;
    data['current_address'] = this.currentAddress;
    data['mobile'] = this.mobile;
    data['numbercarrd'] = this.numbercarrd;
    data['numcardtype'] = this.numcardtype;
    return data;
  }
}
