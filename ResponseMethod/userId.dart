// TODO Implement this library.
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

userId(Request _ , String id ) async {
  File myfile = File("bin/repository.json");
    final List users = json.decode(await myfile.readAsString());
    Map Id_users = users.firstWhere((element) => element["user_id"] == id);

    return Response.ok(json.encode(Id_users)
    ,headers: {'Content-Type': 'Application/json'});
}