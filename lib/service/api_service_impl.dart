
import 'package:dio/dio.dart';
import 'package:write_way_note/dio_helper/dio_helper.dart';
import 'package:write_way_note/service/api_service_contract.dart';

class ApiServiceImpl implements ApiServiceContract{
  @override
  Future<Response> getData({required String url, required Map<String, dynamic> query}) async{
  return  await DioHelper.dio.get(url,queryParameters: query);
  }
  
  // @override
  // Future getData({required String url,required List data}) async{
    
  //  var response = await http.get(Uri.parse(url));
  //   var responseBody =jsonDecode(response.body);
  //   print(responseBody);
  //   data= responseBody[0]['ar'];
  // }

}