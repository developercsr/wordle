//Login details to the 
import 'dart:io';
import 'dart:convert';
class User
{
  String name;
  String dob;
  int mob;
  String email;
  String pwd;
  User( String this.name,String this.dob,int this.mob,String this.email,String this.pwd){
    print("name : ${this.name}");
    print("Date og Birth : ${this.dob}");
    print("Mobile number : ${this.mob}");
    print("email : ${this.email}");
    print("Password : ${this.pwd}");
  }
}
class player extends User
{
  String clss;
  String sec;
  String id;
  player(List<dynamic> keys): clss=keys[5],sec=keys[6],id=keys[7], super(keys[0],keys[1],int.parse(keys[2]),keys[3],keys[4])
  {
    print("class : ${this.clss}");
    print("sec : ${this.sec}");
    print("id : ${this.id}");
    
  }
}

class data_admins extends User
{
  String higest_education;
  String instit;
  data_admins(List<dynamic> keys): higest_education=keys[5],instit=keys[6],super(keys[0],keys[1],int.parse(keys[2]),keys[3],keys[4])
  {
    print("highest education : ${this.higest_education}");
    print("Institution : ${this.instit}");
  }
}

void readJsonFile(String filePath) {
    final file = File(filePath);
    String contents = file.readAsStringSync();
    Map<String, dynamic> jsonData = json.decode(contents);
    String designation=jsonData["designation"];
    jsonData.remove("designation");
    var list_attributes=jsonData.values.toList();
    if (designation=="player")
    {
      player p1=player(list_attributes);
      print(p1);
    }
    else if (designation=="data_provider")
    {
      data_admins d1=data_admins(list_attributes);
      print(d1);
    }
    else
    {

    }
}
void main() 
{
  readJsonFile(r"C:\Users\suman\Desktop\Sanscrit wordlee\wordle\user_req.json");
  print("\n\n");
  readJsonFile(r"C:\Users\suman\Desktop\Sanscrit wordlee\wordle\data_pro.json");
}