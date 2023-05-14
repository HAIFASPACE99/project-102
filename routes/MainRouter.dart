import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../ResponseMethod/delete_UserId.dart';
import '../ResponseMethod/display_all_users.dart';
import '../ResponseMethod/userEmsil.dart';
import '../ResponseMethod/userId.dart';

class mainRouter{

Router get MainRouter{

final  router = Router()
  ..get('/display_all_users', display_all_users)
  ..get("/userId/<id>",userId )
  ..get("/userEmsil/<id>",userEmsil )
  ..delete('/delete_UserId/<id>', delete_UserId);


  return  router;
}

}