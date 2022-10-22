class UserInfo {
  int? userid;
  int? groupId;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? photo;
  int? birthday;
  String? sig;
  int? regdate;
  int? viewMail;
  int? remember;
  int? lastUpdate;
  int? idsite;
  int? passCreationTime;
  int? passResetRequest;
  int? emailVerificationTime;

  UserInfo(
      {this.userid,
      this.groupId,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.photo,
      this.birthday,
      this.sig,
      this.regdate,
      this.viewMail,
      this.remember,
      this.lastUpdate,
      this.idsite,
      this.passCreationTime,
      this.passResetRequest,
      this.emailVerificationTime});

  UserInfo.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    groupId = json['group_id'];
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    gender = json['gender'];
    photo = json['photo'];
    birthday = json['birthday'];
    sig = json['sig'];
    regdate = json['regdate'];
    viewMail = json['view_mail'];
    remember = json['remember'];
    lastUpdate = json['last_update'];
    idsite = json['idsite'];
    passCreationTime = json['pass_creation_time'];
    passResetRequest = json['pass_reset_request'];
    emailVerificationTime = json['email_verification_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['group_id'] = this.groupId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['gender'] = this.gender;
    data['photo'] = this.photo;
    data['birthday'] = this.birthday;
    data['sig'] = this.sig;
    data['regdate'] = this.regdate;
    data['view_mail'] = this.viewMail;
    data['remember'] = this.remember;
    data['last_update'] = this.lastUpdate;
    data['idsite'] = this.idsite;
    data['pass_creation_time'] = this.passCreationTime;
    data['pass_reset_request'] = this.passResetRequest;
    data['email_verification_time'] = this.emailVerificationTime;
    return data;
  }
}
