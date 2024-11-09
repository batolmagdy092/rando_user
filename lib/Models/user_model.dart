class Usermodel {
  List<dynamic> data;

  Usermodel({required this.data});

  factory Usermodel.fromjson(Map<String,dynamic> json)
  {
    List<dynamic> fulldata = [];
    for(int i=0; i<5 ; i++)
      {
        fulldata.add(json["result"][i]);
      }
    fulldata = fulldata.map(
        (user)
            {
              return{
                "name":user["name"]["firstname"] + user["name"]["lastname"],
                "email": user['email'],
                "picture": user["picture"]["thumbnail"],
              };
            }
    ).toList();

    return Usermodel(data: fulldata);
  }
}