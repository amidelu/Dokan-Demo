import 'package:equatable/equatable.dart';

/// success : true
/// status : true
/// message : "Success"
/// data : [{"com_code":100020,"entrydate":"2024-04-30T00:00:00","shift":"SM-MORNING","student_id":"UB2024001","intime":null,"outtime":null,"remarks":"No Punch","timediff":0.0,"atdstat":"A","flag":"","entered_by":"","last_update_by":""}]

class AttendanceEntity {
  AttendanceEntity({
      this.success, 
      this.status, 
      this.message, 
      this.attendanceList,});

  AttendanceEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      attendanceList = [];
      json['data'].forEach((v) {
        attendanceList?.add(AttendanceList.fromJson(v));
      });
    }
  }

  bool? success;
  bool? status;
  String? message;
  List<AttendanceList>? attendanceList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (attendanceList != null) {
      map['data'] = attendanceList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [success, status, message];

}

/// com_code : 100020
/// entrydate : "2024-04-30T00:00:00"
/// shift : "SM-MORNING"
/// student_id : "UB2024001"
/// intime : null
/// outtime : null
/// remarks : "No Punch"
/// timediff : 0.0
/// atdstat : "A"
/// flag : ""
/// entered_by : ""
/// last_update_by : ""

class AttendanceList extends Equatable {
  AttendanceList({
      this.comCode, 
      this.entryDate,
      this.shift, 
      this.studentId, 
      this.inTime,
      this.outTime,
      this.remarks, 
      this.timeDifference,
      this.atdstat, 
      this.flag, 
      this.enteredBy, 
      this.lastUpdateBy,});

  AttendanceList.fromJson(dynamic json) {
    comCode = json['com_code'];
    entryDate = json['entrydate'];
    shift = json['shift'];
    studentId = json['student_id'];
    inTime = json['intime'];
    outTime = json['outtime'];
    remarks = json['remarks'];
    timeDifference = json['timediff'];
    atdstat = json['atdstat'];
    flag = json['flag'];
    enteredBy = json['entered_by'];
    lastUpdateBy = json['last_update_by'];
  }
  int? comCode;
  String? entryDate;
  String? shift;
  String? studentId;
  String? inTime;
  String? outTime;
  String? remarks;
  double? timeDifference;
  String? atdstat;
  String? flag;
  String? enteredBy;
  String? lastUpdateBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['entrydate'] = entryDate;
    map['shift'] = shift;
    map['student_id'] = studentId;
    map['intime'] = inTime;
    map['outtime'] = outTime;
    map['remarks'] = remarks;
    map['timediff'] = timeDifference;
    map['atdstat'] = atdstat;
    map['flag'] = flag;
    map['entered_by'] = enteredBy;
    map['last_update_by'] = lastUpdateBy;
    return map;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [comCode, entryDate, shift, studentId, inTime, outTime, remarks, timeDifference, atdstat, flag, enteredBy, lastUpdateBy];

}