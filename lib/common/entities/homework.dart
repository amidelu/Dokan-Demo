class HomeworkEntity {
  HomeworkEntity({
      this.success, 
      this.status, 
      this.message, 
      this.homeworkList,});

  HomeworkEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      homeworkList = [];
      json['data'].forEach((v) {
        homeworkList?.add(HomeworkItem.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  List<HomeworkItem>? homeworkList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (homeworkList != null) {
      map['data'] = homeworkList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class HomeworkItem {
  HomeworkItem({
      this.comCode, 
      this.hdate, 
      this.className,
      this.subject, 
      this.homework, 
      this.classwork, 
      this.enteredBy, 
      this.lastUpdateBy, 
      this.addTime, 
      this.updateTime, 
      this.hwbangla, 
      this.cwbangla,});

HomeworkItem.fromJson(dynamic json) {
    comCode = json['com_code'];
    hdate = json['hdate'];
className = json['class'];
    subject = json['subject'];
    homework = json['homework'];
    classwork = json['classwork'];
    enteredBy = json['entered_by'];
    lastUpdateBy = json['last_update_by'];
    addTime = json['add_time'];
    updateTime = json['update_time'];
    hwbangla = json['hwbangla'];
    cwbangla = json['cwbangla'];
  }
  int? comCode;
  String? hdate;
  String? className;
  String? subject;
  String? homework;
  String? classwork;
  String? enteredBy;
  String? lastUpdateBy;
  String? addTime;
  String? updateTime;
  String? hwbangla;
  String? cwbangla;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['hdate'] = hdate;
    map['class'] = className;
    map['subject'] = subject;
    map['homework'] = homework;
    map['classwork'] = classwork;
    map['entered_by'] = enteredBy;
    map['last_update_by'] = lastUpdateBy;
    map['add_time'] = addTime;
    map['update_time'] = updateTime;
    map['hwbangla'] = hwbangla;
    map['cwbangla'] = cwbangla;
    return map;
  }

}