

import 'package:book12/Api/Server.dart';
import 'package:book12/model/ModelClass.dart';
import 'package:flutter/cupertino.dart';

class ModelProvider extends ChangeNotifier{
  List<ModelClass> lsitofbooks;

  bool loadingState = false;
  getALLBooks(List<ModelClass> listofModelCLASS) async {
    loadingState = true;
    lsitofbooks = (await getApiReq(listofModelCLASS));
    loadingState = false;
    notifyListeners();
  }
}