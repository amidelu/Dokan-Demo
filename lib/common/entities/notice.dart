import 'package:equatable/equatable.dart';

class NoticeEntity extends Equatable {
  NoticeEntity({
    this.success,
    this.status,
    this.message,
    this.noticeList,});

  NoticeEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      noticeList = [];
      json['data'].forEach((v) {
        noticeList?.add(NoticeItem.fromJson(v));
      });
    }
  }

  bool? success;
  bool? status;
  String? message;
  List<NoticeItem>? noticeList;

  @override
  List<Object?> get props => [noticeList];
}

class NoticeItem extends Equatable {
  NoticeItem({
    this.comCode,
    this.notice,
    this.message,
    this.activation,
    this.enteredBy,
    this.lastUpdateBy,
    this.addTime,
    this.updateTime,});

  NoticeItem.fromJson(dynamic json) {
    comCode = json['com_code'];
    notice = json['notice'];
    message = json['message'];
    activation = json['activation'];
    enteredBy = json['entered_by'];
    lastUpdateBy = json['last_update_by'];
    addTime = json['add_time'];
    updateTime = json['update_time'];
  }

  int? comCode;
  int? notice;
  String? message;
  String? activation;
  String? enteredBy;
  String? lastUpdateBy;
  String? addTime;
  String? updateTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['notice'] = notice;
    map['message'] = message;
    map['activation'] = activation;
    map['entered_by'] = enteredBy;
    map['last_update_by'] = lastUpdateBy;
    map['add_time'] = addTime;
    map['update_time'] = updateTime;
    return map;
  }

  @override
  List<Object?> get props =>
      [
        comCode,
        notice,
        message,
        activation,
        enteredBy,
        lastUpdateBy,
        addTime,
        updateTime
      ];

}