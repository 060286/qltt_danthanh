class DanhMucKhoaHocModel{
  int madanhmuc;
  String tendanhmuc;
  bool tinhtrang;

  DanhMucKhoaHocModel({this.madanhmuc,this.tendanhmuc,this.tinhtrang});

  DanhMucKhoaHocModel.fromJson(Map<String, dynamic> json)
  {
    madanhmuc = json['madanhmuc'];
    tendanhmuc = json['tendanhmuc'];
    tinhtrang = json['tinhtrang'];
  }

  Map<String,dynamic> toJSON(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['madanhmuc'] = this.madanhmuc;
    data['tendanhmuc'] = this.tendanhmuc;
    data['tinhtrang'] = this.tinhtrang;
  }
}