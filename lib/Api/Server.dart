




import 'dart:convert';
import 'dart:developer';

import 'package:book12/model/ModelClass.dart';
import 'package:http/http.dart'as http;

Future<List<ModelClass>> getApiReq (List<ModelClass> model) async {
   try {
      final resp = await http.get(Uri.parse("http://localhost:8090/getAllbooks"));
      final body = json.decode(resp.body);
      if(resp.statusCode == 200){
            for(Map item in body){
               model.add(ModelClass.fromJson(item));
            }
         }else{
         log("error");
      }
   } catch (e) {
      log(e.toString());
   }
return model;
}