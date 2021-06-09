

class BangDiemModel {
  int mabangdiem;
  double kt1;
  double kt2;
  double thil1;
  int mahocvien;
  double ketqua;

  BangDiemModel({
    this.mabangdiem,
    this.kt1,
    this.kt2,
    this.thil1,
    this.mahocvien,
    this.ketqua
});

  BangDiemModel.fromJSON(Map<String, dynamic> json){
   mabangdiem = json['mabangdiem'];
   kt1 = json['kt1'];
   kt2 = json['kt2'];
   thil1 = json['thil1'];
   mahocvien = json['mahocvien'];
   ketqua = json['ketqua'];
  }

  Map<String, dynamic> toJson(){
  final Map<String, dynamic> data = new Map<String, dynamic>();

    data['mabangdiem'] = this.mabangdiem;
    data['kt1'] = this.kt1;
    data['kt2'] = this.kt2;
    data['thil1'] = this.thil1;
    data['mahocvien'] = this.mahocvien;
    data['ketqua'] = this.ketqua;

    return data;
  }
}