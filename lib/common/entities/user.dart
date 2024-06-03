class LoginRequestEntity {
  String? comCode;
  String? email;
  String? password;

  LoginRequestEntity({
    this.comCode,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => {
        "ComCode": comCode,
        "Name": email,
        "Password": password,
      };
}

//api post response msg
class UserLoginResponseEntity {
  UserLoginResponseEntity({
    this.success,
    this.status,
    this.message,
    this.expiresIn,
    this.id,
    this.userName,
    this.authToken,
    this.profile,});

  UserLoginResponseEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    expiresIn = json['expires_in'];
    id = json['id'];
    userName = json['userName'];
    authToken = json['auth_token'];
    if (json['profile'] != null) {
      profile = [];
      json['profile'].forEach((v) {
        profile?.add(Profile.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  int? expiresIn;
  String? id;
  String? userName;
  String? authToken;
  List<Profile>? profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    map['expires_in'] = expiresIn;
    map['id'] = id;
    map['userName'] = userName;
    map['auth_token'] = authToken;
    if (profile != null) {
      map['profile'] = profile?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class Profile {
  Profile({
    this.comCode,
    this.studentId,
    this.studentName,
    this.fatherName,
    this.motherName,
    this.shift,
    this.className,
    this.smsession,
    this.section,
    this.permanentAddress,
    this.email,
    this.mobile,
    this.photo,});

  Profile.fromJson(dynamic json) {
    comCode = json['com_code'];
    studentId = json['student_id'];
    studentName = json['student_name'];
    fatherName = json['father_name'];
    motherName = json['mother_name'];
    shift = json['shift'];
    className = json['className'];
    smsession = json['smsession'];
    section = json['section'];
    permanentAddress = json['permanent_address'];
    email = json['email'];
    mobile = json['mobile'];
    photo = json['photo'];
  }
  int? comCode;
  String? studentId;
  String? studentName;
  String? fatherName;
  String? motherName;
  String? shift;
  String? className;
  String? smsession;
  String? section;
  String? permanentAddress;
  String? email;
  String? mobile;
  String? photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['student_id'] = studentId;
    map['student_name'] = studentName;
    map['father_name'] = fatherName;
    map['mother_name'] = motherName;
    map['shift'] = shift;
    map['className'] = className;
    map['smsession'] = smsession;
    map['section'] = section;
    map['permanent_address'] = permanentAddress;
    map['email'] = email;
    map['mobile'] = mobile;
    map['photo'] = photo;
    return map;
  }

}
