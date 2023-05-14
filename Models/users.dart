class Users{


  String? user_id;
  String? email ; 
  String? name;
  String? give_name;
  String? family_name;
  String? nickname;
  String? last_ip;
  int? logins_count;
  String? created_at;
  String? updated_at;
  String? last_login;
  bool? email_verified;




Users({required this.email, required this.user_id,required this.name,
     required this.give_name,
     required this.family_name,
     required this.nickname,
    required  this.last_ip,
    required  this.logins_count,
    required  this.created_at,
    required  this.updated_at,
    required  this.last_login,
    required  this.email_verified});


factory Users.fromjson(Map json){




  return Users(
    email: json["email"],
     user_id: json["user_id"],
      name: json['name'],
      give_name: json['give_name'],
      family_name: json['family_name'],
      nickname: json['nickname'],
      last_ip: json['last_ip'],
      logins_count: json['logins_count'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      last_login: json['last_login'],
      email_verified: json['email_verified']);
}




toMap(){
return {

'email': email,
'user_id': user_id,
 "name": name,
 "give_name": give_name,
 "family_name": family_name,
  "nickname": nickname,
  "last_ip": last_ip,
  "logins_count": logins_count,
  "created_at": created_at,
  "updated_at": updated_at,
  "last_login": last_login,
  "email_verified": email_verified,


};

}


}