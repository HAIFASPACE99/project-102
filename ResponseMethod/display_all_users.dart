// TODO Implement this library.
import 'dart:io';

import 'package:shelf/shelf.dart';

display_all_users(Request _) async {
  File myFile = File("bin/repository.json");
  final content = await myFile.readAsString();

  return Response.ok(content, headers: {
    'Content-Type': 'Application/json',
  });
}