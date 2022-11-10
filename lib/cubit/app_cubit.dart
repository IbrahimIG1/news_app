
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:write_way_note/cubit/app_cubit_states.dart';
import 'package:write_way_note/dio_helper/dio_helper.dart';
import 'package:write_way_note/service/api_service_impl.dart';

class AppCubit extends Cubit<InitAppCubitState>
{
  
  AppCubit() : super(InitAppCubitState());
  static AppCubit get(context) => BlocProvider.of(context);

  void getData()
  async{
    emit(LoadingAppCubitState());
    ApiServiceImpl? apiServiceImpl;
    apiServiceImpl!.getData(url: 'v2/top-headlines',query: 
    {
      "country" :"eg",
      "category" : "sport",
      "apikey" : "e9ad4525d14b4aada416770514075197"
    });
   emit(GetDataAppCubitState());
  }
}