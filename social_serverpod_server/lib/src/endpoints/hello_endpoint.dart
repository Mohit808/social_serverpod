import 'package:serverpod/serverpod.dart';

class HelloEndpoint extends Endpoint {
  Future<String> sayHello(Session session, String name) async {
    return 'Hello $name 👋 from Serverpod';
  }
}
