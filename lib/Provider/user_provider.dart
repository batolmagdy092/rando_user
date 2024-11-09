import 'package:flutter/cupertino.dart';
import 'package:rando_user/Models/user_model.dart';
import 'package:rando_user/Services/user_service.dart';
import 'package:provider/provider.dart';

class Userprovider with ChangeNotifier{
  Usermodel? userdata;

  static Userprovider getObject(context) =>
      Provider.of<Userprovider>(context, listen: false);

  Future<void> Fetchuserprovider() async{
    userdata = await Userservice.fetchrandomuser();
    notifyListeners();
  }
}