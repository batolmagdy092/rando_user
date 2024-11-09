import 'package:dio/dio.dart';
import 'package:rando_user/Models/user_model.dart';
import '../Models/user_model.dart';

class Userservice{
static final Dio dio = Dio();

static Future<Usermodel> fetchrandomuser() async
{
try{
  Response response = await dio.get("https://randomuser.me/api/?results=5");
  return Usermodel.fromjson(response.data);
}catch(e)
  {
    throw Exception('Error fetching');
  }
}
}