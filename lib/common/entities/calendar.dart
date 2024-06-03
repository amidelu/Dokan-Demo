/// com_code : 100000
/// caldate : "16-Feb-2024"
/// dayname : "Friday"
/// dayDate : "Friday 16 February, 2024"
/// holidaydesc : "Holiday"
/// note : ""
/// weekno : "7"
/// year : 2024
/// monthNo : 2
/// weekOfMonth : "3"
/// monthname : "February"

class CalendarEntity {
  CalendarEntity({
      this.comCode, 
      this.caldate, 
      this.dayname, 
      this.dayDate, 
      this.holidaydesc, 
      this.note, 
      this.weekno, 
      this.year, 
      this.monthNo, 
      this.weekOfMonth, 
      this.monthname,});

  CalendarEntity.fromJson(dynamic json) {
    comCode = json['com_code'];
    caldate = json['caldate'];
    dayname = json['dayname'];
    dayDate = json['dayDate'];
    holidaydesc = json['holidaydesc'];
    note = json['note'];
    weekno = json['weekno'];
    year = json['year'];
    monthNo = json['monthNo'];
    weekOfMonth = json['weekOfMonth'];
    monthname = json['monthname'];
  }
  int? comCode;
  String? caldate;
  String? dayname;
  String? dayDate;
  String? holidaydesc;
  String? note;
  String? weekno;
  int? year;
  int? monthNo;
  String? weekOfMonth;
  String? monthname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['com_code'] = comCode;
    map['caldate'] = caldate;
    map['dayname'] = dayname;
    map['dayDate'] = dayDate;
    map['holidaydesc'] = holidaydesc;
    map['note'] = note;
    map['weekno'] = weekno;
    map['year'] = year;
    map['monthNo'] = monthNo;
    map['weekOfMonth'] = weekOfMonth;
    map['monthname'] = monthname;
    return map;
  }

}