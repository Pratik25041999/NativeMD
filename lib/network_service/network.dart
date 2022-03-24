import 'package:dio/dio.dart';

class Network {
  static User? currentUser;
  static String? _baseUrl;
  Dio dio = Dio();

  static Future setConfig({String? env}) async {
    // String api = 'https://dev.blud.app/api';
    // String api = 'https://prod.blud.app/api';
    String api = "http://192.168.1.130:1337";
    return _baseUrl = "$api/applications/";
  }

  Future<Map<String, dynamic>> getReq(String query) async {
    try {
      print('ReqAPI - $_baseUrl$query');
      Response getResponse = await dio.get(
        '$_baseUrl$query',
        options: getOptions(),
      );
      return getResponse.data;
    } catch (e) {
      return staticErrorResponse;
    }
  }

  Future<Map<String, dynamic>> postReq(payload, String api) async {
    try {
      print("PostApi - $_baseUrl$api");
      Response postResponse = await dio.post(
        Uri.encodeFull("$_baseUrl$api"),
        options: getOptions(),
        data: payload,
      );
      return postResponse.data;
    } catch (e) {
      return staticErrorResponse;
    }
  }

  Future<Map<String, dynamic>> putReq(payload, String api) async {
    try {
      print(api);
      Response postResponse = await dio.put(
        Uri.encodeFull("$_baseUrl$api"),
        options: getOptions(),
        data: payload,
      );
      return postResponse.data;
    } catch (e) {
      return staticErrorResponse;
    }
  }

  Options getOptions() {
    return Options(
      contentType: 'multipart/form-data',
      headers: {
        'Content-Type': 'application/json',
        "Connection": "Keep-Alive",
        if (currentUser != null) 'token': '${currentUser!.token}',
      },
    );
  }
}

class User {
  String? token;

  User({this.token});
}

Map<String, dynamic> staticErrorResponse = {
  "code": 400,
  "content": {"errorCode": "GN-400", "message": "Somthing went wrong!"},
};
