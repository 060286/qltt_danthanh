import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

const DOMAIN = 'https://localhost:44324/api/';

const DANGNHAP_ENDPOINT = DOMAIN + 'dangnhap';
const DANHMUCKHOAHOC_ENDPOINT = DOMAIN + 'danhmuckhoahoc';
const BANGDIEM_ENDPOINT = DOMAIN + 'bangdiem';
const CHUCNANG_ENDPOINT = DOMAIN + 'chucnang';
const GIAOVIEN_ENDPOINT = DOMAIN + 'giaovien';
const GV_DIEMDANH_ENPOINT = DOMAIN + 'gv_diemdanh';
const KHOAHOC_ENDPOINT = DOMAIN + 'khoahoc';
const LOPHOC_ENDPOINT = DOMAIN + 'lophoc';
const PHUHUYNH_ENDPOINT = DOMAIN + 'phuhuynh';
const THOIKHOABIEU_ENDPOINT = DOMAIN + 'thoikhoabieu';
const TRINHDO_ENDPOINT = DOMAIN + 'trinhdo';

class HttpHelper{
  static Future<http.Response> post(String url, Map<String, dynamic> body,
      {String bearerToken}) async {
//    print('HTTP POST: $url');
    return (await http.post(Uri.parse(url), body: jsonEncode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $bearerToken'
    }));
  }

  static Future<http.Response> put(String url, Map<String, dynamic> body,
      {String bearerToken}) async {
    return (await http.put(Uri.parse(url), body: jsonEncode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $bearerToken'
    }));
  }

  static Future<http.Response> get(String url, {String bearerToken}) async {
    return await http.get(Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $bearerToken'});
  }
}