class VaiTroModel{
  String mavaitro;
  String tenvaitro;

  VaiTroModel({this.mavaitro,this.tenvaitro});

  VaiTroModel.fromJSON(Map<String, dynamic> json){
    mavaitro = json['mavaitro'];
    tenvaitro = json['tenvaitro'];
  }

  Map<String, dynamic> toJSON(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mavaitro'] = this.mavaitro;
    data['tenvaitro'] = this.tenvaitro;
    return data;
  }
}
