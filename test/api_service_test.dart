import 'package:flutter_test/flutter_test.dart';
import 'package:write_way_note/dio_helper/dio_helper.dart';
import 'package:write_way_note/service/api_service_impl.dart';

main() {
  ApiServiceImpl? sut;

  setUp(() {
    sut = ApiServiceImpl();
    DioHelper.init();
  });
  test('get data done', () {
    var data;

    sut!.getData(url: 'v2/top-headlines', query: {
      "country": "eg",
      "category": "sports",
      "apikey": "e9ad4525d14b4aada416770514075197"
    }).then((value) {
      data = value;
      expect(data, isNotEmpty);
    });
  });
}
