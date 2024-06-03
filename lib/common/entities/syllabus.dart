/// success : true
/// status : true
/// message : "Success"
/// data : [{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"001","topic":"","books":"","page":"","question":"Multiple choice questions.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:12:30.737"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"002","topic":"","books":"","page":"","question":"Calculation involving roman numerals.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:12:42.477"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"003","topic":"","books":"","page":"","question":"Addition, subtraction of place value.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:12:55.103"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"004","topic":"","books":"","page":"","question":"Arrange the sets of ascending and descending order. ","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:13:09.633"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"005","topic":"","books":"","page":"","question":"Multiplication and division of large numbers. ","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:13:21.29"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"006","topic":"","books":"","page":"","question":"Find the multiples and factors of given numbers.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:13:33.827"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"007","topic":"","books":"","page":"","question":"Find the H.C.F and L.C.M of given numbers.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:13:48.053"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Question","serial":"008","topic":"","books":"","page":"","question":"Word problem.","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:14:02.68"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"001","topic":"Roman Numerals","books":"Maths Mileage - 5","page":"1","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:02:17.61"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"002","topic":"Large Numbers","books":"Maths Mileage - 5","page":"9","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:02:42.743"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"003","topic":"Operations on Large Number","books":"Maths Mileage - 5","page":"28","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:03:04.877"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"004","topic":"Multiples and Factors","books":"Maths Mileage - 5","page":"56","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:03:23.03"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"005","topic":"H.C.F and L.C.M","books":"Maths Mileage - 5","page":"71","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:03:40.68"},{"com_code":100000,"smsession":"2018-2019","examtype":"First Term Assessment","class":"STD-4","subject":"Mathematics","type":"Topic","serial":"006","topic":"Exercise (1 to 30) ","books":"Mental Maths","page":"1-30","question":"","entered_by":"arman","last_update_by":null,"add_time":"2018-08-01T11:04:17.25"}]

class SyllabusEntity {
  SyllabusEntity({
      this.success, 
      this.status, 
      this.message, 
      this.syllabusList,});

  SyllabusEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      syllabusList = [];
      json['data'].forEach((v) {
        syllabusList?.add(SyllabusItem.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  List<SyllabusItem>? syllabusList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (syllabusList != null) {
      map['data'] = syllabusList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class SyllabusItem {
  SyllabusItem({
      this.comCode, 
      this.smsession, 
      this.examtype, 
      this.classType, 
      this.subject, 
      this.type, 
      this.serial, 
      this.topic, 
      this.books, 
      this.page, 
      this.question, 
      this.enteredBy, 
      this.lastUpdateBy, 
      this.addTime,});

  SyllabusItem.fromJson(dynamic json) {
    comCode = json['com_code'];
    smsession = json['smsession'];
    examtype = json['examtype'];
    classType = json['class'];
    subject = json['subject'];
    type = json['type'];
    serial = json['serial'];
    topic = json['topic'];
    books = json['books'];
    page = json['page'];
    question = json['question'];
    enteredBy = json['entered_by'];
    lastUpdateBy = json['last_update_by'];
    addTime = json['add_time'];
  }
  int? comCode;
  String? smsession;
  String? examtype;
  String? classType;
  String? subject;
  String? type;
  String? serial;
  String? topic;
  String? books;
  String? page;
  String? question;
  String? enteredBy;
  dynamic lastUpdateBy;
  String? addTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['smsession'] = smsession;
    map['examtype'] = examtype;
    map['class'] = classType;
    map['subject'] = subject;
    map['type'] = type;
    map['serial'] = serial;
    map['topic'] = topic;
    map['books'] = books;
    map['page'] = page;
    map['question'] = question;
    map['entered_by'] = enteredBy;
    map['last_update_by'] = lastUpdateBy;
    map['add_time'] = addTime;
    return map;
  }

}