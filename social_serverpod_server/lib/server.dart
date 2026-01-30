import 'package:serverpod/serverpod.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;


/// The starting point of the Serverpod server.
void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(args, Protocol(), Endpoints(),
      authenticationHandler: auth.authenticationHandler
  );

  auth.AuthConfig.set(auth.AuthConfig(
    sendValidationEmail: (session, email, validationCode) async {
      print('Validation code for $email: $validationCode');
      return true;
    },
    sendPasswordResetEmail: (session, userInfo, validationCode) async {
      print('Password reset code: $validationCode');
      return true;
    },
  ));

  // Start the server.
  await pod.start();
}
