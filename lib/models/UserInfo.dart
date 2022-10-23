class UserInfo {
  final int userid;
  final int groupId;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String photo;
  final int birthday;
  final String sig;
  final int regdate;
  final int viewMail;
  final int remember;
  final int lastUpdate;
  final int idsite;
  final int passCreationTime;
  final int passResetRequest;
  final int emailVerificationTime;

  UserInfo(
      {required this.userid,
      required this.groupId,
      required this.username,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.photo,
      required this.birthday,
      required this.sig,
      required this.regdate,
      required this.viewMail,
      required this.remember,
      required this.lastUpdate,
      required this.idsite,
      required this.passCreationTime,
      required this.passResetRequest,
      required this.emailVerificationTime});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      userid: json['userid'],
      groupId: json['group_id'],
      username: json['username'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      gender: json['gender'],
      photo: json['photo'],
      birthday: json['birthday'],
      sig: json['sig'],
      regdate: json['regdate'],
      viewMail: json['view_mail'],
      remember: json['remember'],
      lastUpdate: json['last_update'],
      idsite: json['idsite'],
      passCreationTime: json['pass_creation_time'],
      passResetRequest: json['pass_reset_request'],
      emailVerificationTime: json['email_verification_time'],
    );
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
