







import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

delete_UserId(Request _ , String id ) async {
     File myfile = File("bin/repository.json");
    final List users = json.decode(await myfile.readAsString());
    Map delete_users = users.firstWhere((element) => element["user_id"] == id);

    return Response.ok(json.encode(delete_users)
    ,headers: {'Content-Type': 'Application/json'});


}