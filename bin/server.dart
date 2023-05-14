import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import '../Models/users.dart';
import '../routes/MainRouter.dart';

main()async => withHotreload(() => createServer());

Future<HttpServer>createServer() async{
//var ip for my divaice 
final ip = InternetAddress.anyIPv4;
final int port = int.parse(Platform.environment["PORT"] ?? "8080");
//serv to run the server 
final server = await serve(mainRouter().MainRouter, ip, port);
//check if serer is turn on 
print("server is on at http://${server.address.host}:${server.port}");
return server;

}