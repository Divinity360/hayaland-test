import 'package:fluro/fluro.dart';
import 'package:web_project/view/homepage.dart';


class MyRouter {
  static FluroRouter router = FluroRouter();


  static void setupRouter() {
    router.define('/', handler: _homeHandler);
  }

  static final Handler _homeHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>  HomePage());
}
