class MyModel {
  String? category1;
  String? category2;
  String? category3;
  String? category4;
  String? category5;
  String? category6;
  String? category7;
  String? category8;
  String? category9;
  String? category10;
  String? category11;
  String? category12;
  String? category13;
  String? category14;
  String? category15;
  String? category16;
  String? user;
  var createdAt;
  String? uid;

  MyModel(
      {this.category1,
      this.category2,
      this.category3,
      this.category4,
      this.category5,
      this.category6,
      this.category7,
      this.category8,
      this.category9,
      this.category10,
      this.category11,
      this.category12,
      this.category13,
      this.category14,
      this.category15,
      this.category16,
      this.user,
      this.createdAt,
      this.uid});

  MyModel.fromJson(Map<String, dynamic> json) {
    category1 = json['category1'];
    category2 = json['category2'];
    category3 = json['category3'];
    category4 = json['category4'];
    category5 = json['category5'];
    category6 = json['category6'];
    category7 = json['category7'];
    category8 = json['category8'];
    category9 = json['category9'];
    category10 = json['category10'];
    category11 = json['category11'];
    category12 = json['category12'];
    category13 = json['category13'];
    category14 = json['category14'];
    category15 = json['category15'];
    category16 = json['category16'];
    user = json['user'];
    createdAt = json['createdAt'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category1'] = this.category1;
    data['category2'] = this.category2;
    data['category3'] = this.category3;
    data['category4'] = this.category4;
    data['category5'] = this.category5;
    data['category6'] = this.category6;
    data['category7'] = this.category7;
    data['category8'] = this.category8;
    data['category9'] = this.category9;
    data['category10'] = this.category10;
    data['category11'] = this.category11;
    data['category12'] = this.category12;
    data['category13'] = this.category13;
    data['category14'] = this.category14;
    data['category15'] = this.category15;
    data['category16'] = this.category16;
    data['user'] = this.user;
    data['createdAt'] = this.createdAt;
    data['uid'] = this.uid;
    return data;
  }
}
