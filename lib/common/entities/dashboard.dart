/// success : true
/// status : true
/// message : "Success"
/// data : [{"facebookUrl":"https://www.facebook.com/averroesinternationalscho","youtubeUrl":"https://www.youtube.com/channel/UCJ_3DyH2lKDAI","websiteUrl":"https://www.aisd.edu.bd","googleClassRoomUrl":"","lastExamAvgPercentAchieve":75.83,"ttlDay":0,"dayOfMonth":0,"ttlPresentInCurrMonth":0,"presentInCurrentMonth":0,"lateInCurrentMonth":0,"absentInCurrentMonth":0,"ttlWeekend":0,"ttlGovHoliday":0,"advancedPayment":0.0,"paymentDues":0.0,"restBalance":0.0,"note":"Delowar vai, \"ttlPresentInCurrMonth\" use for dashboard Presnt data!"}]

class DashboardEntity {
  DashboardEntity({
      this.success, 
      this.status, 
      this.message, 
      this.dashboardList,});

  DashboardEntity.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      dashboardList = [];
      json['data'].forEach((v) {
        dashboardList?.add(DashboardItem.fromJson(v));
      });
    }
  }
  bool? success;
  bool? status;
  String? message;
  List<DashboardItem>? dashboardList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (dashboardList != null) {
      map['data'] = dashboardList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// facebookUrl : "https://www.facebook.com/averroesinternationalscho"
/// youtubeUrl : "https://www.youtube.com/channel/UCJ_3DyH2lKDAI"
/// websiteUrl : "https://www.aisd.edu.bd"
/// googleClassRoomUrl : ""
/// lastExamAvgPercentAchieve : 75.83
/// ttlDay : 0
/// dayOfMonth : 0
/// ttlPresentInCurrMonth : 0
/// presentInCurrentMonth : 0
/// lateInCurrentMonth : 0
/// absentInCurrentMonth : 0
/// ttlWeekend : 0
/// ttlGovHoliday : 0
/// advancedPayment : 0.0
/// paymentDues : 0.0
/// restBalance : 0.0
/// note : "Delowar vai, \"ttlPresentInCurrMonth\" use for dashboard Presnt data!"

class DashboardItem {
  DashboardItem({
      this.facebookUrl, 
      this.youtubeUrl, 
      this.websiteUrl, 
      this.googleClassRoomUrl, 
      this.lastExamAvgPercentAchieve, 
      this.ttlDay, 
      this.dayOfMonth, 
      this.ttlPresentInCurrMonth, 
      this.presentInCurrentMonth, 
      this.lateInCurrentMonth, 
      this.absentInCurrentMonth, 
      this.ttlWeekend, 
      this.ttlGovHoliday, 
      this.advancedPayment, 
      this.paymentDues, 
      this.restBalance, 
      this.note,});

  DashboardItem.fromJson(dynamic json) {
    facebookUrl = json['facebookUrl'];
    youtubeUrl = json['youtubeUrl'];
    websiteUrl = json['websiteUrl'];
    googleClassRoomUrl = json['googleClassRoomUrl'];
    lastExamAvgPercentAchieve = json['lastExamAvgPercentAchieve'];
    ttlDay = json['ttlDay'];
    dayOfMonth = json['dayOfMonth'];
    ttlPresentInCurrMonth = json['ttlPresentInCurrMonth'];
    presentInCurrentMonth = json['presentInCurrentMonth'];
    lateInCurrentMonth = json['lateInCurrentMonth'];
    absentInCurrentMonth = json['absentInCurrentMonth'];
    ttlWeekend = json['ttlWeekend'];
    ttlGovHoliday = json['ttlGovHoliday'];
    advancedPayment = json['advancedPayment'];
    paymentDues = json['paymentDues'];
    restBalance = json['restBalance'];
    note = json['note'];
  }
  String? facebookUrl;
  String? youtubeUrl;
  String? websiteUrl;
  String? googleClassRoomUrl;
  double? lastExamAvgPercentAchieve;
  int? ttlDay;
  int? dayOfMonth;
  int? ttlPresentInCurrMonth;
  int? presentInCurrentMonth;
  int? lateInCurrentMonth;
  int? absentInCurrentMonth;
  int? ttlWeekend;
  int? ttlGovHoliday;
  double? advancedPayment;
  double? paymentDues;
  double? restBalance;
  String? note;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['facebookUrl'] = facebookUrl;
    map['youtubeUrl'] = youtubeUrl;
    map['websiteUrl'] = websiteUrl;
    map['googleClassRoomUrl'] = googleClassRoomUrl;
    map['lastExamAvgPercentAchieve'] = lastExamAvgPercentAchieve;
    map['ttlDay'] = ttlDay;
    map['dayOfMonth'] = dayOfMonth;
    map['ttlPresentInCurrMonth'] = ttlPresentInCurrMonth;
    map['presentInCurrentMonth'] = presentInCurrentMonth;
    map['lateInCurrentMonth'] = lateInCurrentMonth;
    map['absentInCurrentMonth'] = absentInCurrentMonth;
    map['ttlWeekend'] = ttlWeekend;
    map['ttlGovHoliday'] = ttlGovHoliday;
    map['advancedPayment'] = advancedPayment;
    map['paymentDues'] = paymentDues;
    map['restBalance'] = restBalance;
    map['note'] = note;
    return map;
  }

}