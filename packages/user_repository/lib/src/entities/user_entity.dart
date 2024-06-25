class MyUserEntity {
  
  String userId;
  String email;
  String name;
  bool hasActiveCart;




MyUserEntity({
  
  required this.userId,
  required this.email,
  required this.name,
  required this.hasActiveCart

});



static final empty = MyUserEntity(

  userId : '',
  email : '',
  name : '',
  hasActiveCart : false

);

Map<String,Object?> toJsonDocument() {
  return {

    'userId' : userId,
    'email' : email,
    'name' : name,
    'hasActiveCart' : hasActiveCart

  };
}


static MyUserEntity fromJsonDocument(Map<String,dynamic> doc) {
  return MyUserEntity(
    userId : doc['userId'],
    email : doc['email'],
    name : doc['name'],
    hasActiveCart : doc['hasActiveCart']
  );
}







}


