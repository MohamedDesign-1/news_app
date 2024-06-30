import 'package:dio/dio.dart';

class NewsService{
  final dio = Dio();

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=41bd20a3903f4af7b134153dcd56c209');
    print(response);
  }
}
