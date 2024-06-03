/// success : true
/// status : true
/// message : "Success"
/// data : [{"com_code":100020,"smsession":"2023-2024","examtype":"Mid Term Assessment","subject":"Science","class":"STD-5","section":"Aster","examcategory":"Class Tests","student_id":"UB2019007","marks":14.5,"remarks":"","entrydate":"2024-02-25T13:12:50.673","max_marks":20.0,"entered_by":"rayhan.averroes","last_update_by":null,"add_time":"2024-02-25T13:12:50.673","status":"Confirmed","confirm_by":"momin.averroes","confirm_time":"2024-03-10T09:58:09.55","undoconfirm_by":null,"undoconfirm_time":null,"max_marks_ct":null,"max_marks_hw":null},{"com_code":100020,"smsession":"2023-2024","examtype":"Mid Term Assessment","subject":"Science","class":"STD-5","section":"Aster","examcategory":"Exam","student_id":"UB2019007","marks":45.0,"remarks":"","entrydate":"2024-02-25T13:13:15.78","max_marks":70.0,"entered_by":"rayhan.averroes","last_update_by":null,"add_time":"2024-02-25T13:13:15.78","status":"Confirmed","confirm_by":"momin.averroes","confirm_time":"2024-03-10T09:58:15.383","undoconfirm_by":null,"undoconfirm_time":null,"max_marks_ct":null,"max_marks_hw":null},{"com_code":100020,"smsession":"2023-2024","examtype":"Mid Term Assessment","subject":"Science","class":"STD-5","section":"Aster","examcategory":"Homework Class Participation and Assignments","student_id":"UB2019007","marks":5.5,"remarks":"","entrydate":"2024-02-25T13:12:28.79","max_marks":10.0,"entered_by":"rayhan.averroes","last_update_by":null,"add_time":"2024-02-25T13:12:28.79","status":"Confirmed","confirm_by":"momin.averroes","confirm_time":"2024-03-10T09:58:04.513","undoconfirm_by":null,"undoconfirm_time":null,"max_marks_ct":null,"max_marks_hw":null}]

class ResultEntity {
  ResultEntity({
    this.success,
    this.status,
    this.message,
    this.resultList,
  });

  ResultEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      resultList = [];
      json['data'].forEach((v) {
        resultList?.add(ResultItem.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  List<ResultItem>? resultList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (resultList != null) {
      map['data'] = resultList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// com_code : 100020
/// smsession : "2023-2024"
/// examtype : "Mid Term Assessment"
/// subject : "Science"
/// class : "STD-5"
/// section : "Aster"
/// examcategory : "Class Tests"
/// student_id : "UB2019007"
/// marks : 14.5
/// remarks : ""
/// entrydate : "2024-02-25T13:12:50.673"
/// max_marks : 20.0
/// entered_by : "rayhan.averroes"
/// last_update_by : null
/// add_time : "2024-02-25T13:12:50.673"
/// status : "Confirmed"
/// confirm_by : "momin.averroes"
/// confirm_time : "2024-03-10T09:58:09.55"
/// undoconfirm_by : null
/// undoconfirm_time : null
/// max_marks_ct : null
/// max_marks_hw : null

class ResultItem {
  ResultItem({
    this.comCode,
    this.smsession,
    this.examtype,
    this.subject,
    this.className,
    this.section,
    this.examcategory,
    this.studentId,
    this.marks,
    this.remarks,
    this.entrydate,
    this.maxMarks,
    this.enteredBy,
    this.lastUpdateBy,
    this.addTime,
    this.status,
    this.confirmBy,
    this.confirmTime,
    this.undoconfirmBy,
    this.undoconfirmTime,
    this.maxMarksCt,
    this.maxMarksHw,
  });

  ResultItem.fromJson(dynamic json) {
    comCode = json['com_code'];
    smsession = json['smsession'];
    examtype = json['examtype'];
    subject = json['subject'];
    className = json['class'];
    section = json['section'];
    examcategory = json['examcategory'];
    studentId = json['student_id'];
    marks = json['marks'];
    remarks = json['remarks'];
    entrydate = json['entrydate'];
    maxMarks = json['max_marks'];
    enteredBy = json['entered_by'];
    lastUpdateBy = json['last_update_by'];
    addTime = json['add_time'];
    status = json['status'];
    confirmBy = json['confirm_by'];
    confirmTime = json['confirm_time'];
    undoconfirmBy = json['undoconfirm_by'];
    undoconfirmTime = json['undoconfirm_time'];
    maxMarksCt = json['max_marks_ct'];
    maxMarksHw = json['max_marks_hw'];
  }
  int? comCode;
  String? smsession;
  String? examtype;
  String? subject;
  String? className;
  String? section;
  String? examcategory;
  String? studentId;
  double? marks;
  String? remarks;
  String? entrydate;
  double? maxMarks;
  String? enteredBy;
  dynamic lastUpdateBy;
  String? addTime;
  String? status;
  String? confirmBy;
  String? confirmTime;
  dynamic undoconfirmBy;
  dynamic undoconfirmTime;
  dynamic maxMarksCt;
  dynamic maxMarksHw;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['smsession'] = smsession;
    map['examtype'] = examtype;
    map['subject'] = subject;
    map['class'] = className;
    map['section'] = section;
    map['examcategory'] = examcategory;
    map['student_id'] = studentId;
    map['marks'] = marks;
    map['remarks'] = remarks;
    map['entrydate'] = entrydate;
    map['max_marks'] = maxMarks;
    map['entered_by'] = enteredBy;
    map['last_update_by'] = lastUpdateBy;
    map['add_time'] = addTime;
    map['status'] = status;
    map['confirm_by'] = confirmBy;
    map['confirm_time'] = confirmTime;
    map['undoconfirm_by'] = undoconfirmBy;
    map['undoconfirm_time'] = undoconfirmTime;
    map['max_marks_ct'] = maxMarksCt;
    map['max_marks_hw'] = maxMarksHw;
    return map;
  }
}
