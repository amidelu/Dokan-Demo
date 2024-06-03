class ExamTypeEntity {
  ExamTypeEntity({
    this.success,
    this.status,
    this.message,
    this.examTypeList,});

  ExamTypeEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      examTypeList = [];
      json['data'].forEach((v) {
        examTypeList?.add(ExamTypeItem.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  List<ExamTypeItem>? examTypeList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    return map;
  }

}

class ExamTypeItem {
  ExamTypeItem({
    this.id,
    this.value,});

  ExamTypeItem.fromJson(dynamic json) {
    id = json['id'];
    value = json['value'];
  }

  String? id;
  String? value;

}