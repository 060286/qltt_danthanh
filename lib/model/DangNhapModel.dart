import 'package:qltt_danthanh/model/VaiTro.dart';

class DangNhapModel{
  int mataikhoan;
  String tennguoidung;
  String taikhoan;
  String mavaitro;
  String matkhau;
  bool trangthai;
  VaiTroModel vaitro;

  DangNhapModel({
    this.mataikhoan,
    this.tennguoidung,
    this.taikhoan,
    this.mavaitro,
    this.matkhau,
    this.trangthai,
    this.vaitro
  });

  DangNhapModel.fromJSON(Map<String,dynamic> json){
    mataikhoan = json['mataikhoan'];
    tennguoidung = json['tennguoidung'];
    taikhoan = json['taikhoan'];
    mavaitro = json['mavaitro'];
    matkhau = json['matkhau'];
    vaitro = json['vaitro'];
  }

  Map<String,dynamic> toJSON() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['mataikhoan'] = this.mataikhoan;
    data['tennguoidung'] = this.tennguoidung;
    data['taikhoan'] = this.taikhoan;
    data['mavaitro'] = this.mavaitro;
    data['matkhau'] = this.matkhau;
    data['vaitro'] = this.vaitro;

    return data;
  }
}