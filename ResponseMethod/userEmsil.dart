
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

userEmsil(Request _ , String email ) async {
     File myfile = File("bin/repository.json");
    final List users = json.decode(await myfile.readAsString());
    Map Email_users = users.firstWhere((element) => element["email"] == email);

    return Response.ok(json.encode(Email_users)
    ,headers: {'Content-Type': 'Application/json'});

}