import 'dart:convert';
import 'dart:io';

class word_details
{
  int length;
  String word;
  DateTime date;
  String word_hint;
  String image_hint;
  word_details({required int this.length, required this.word,DateTime? date,required this.word_hint,String? image_hint}):date=date??DateTime.now(),image_hint=image_hint??"No DATA PROVIDED"
  {
    print(this.length);
    print(this.word);
    print(this.date);
    print(this.word_hint);
    print(this.image_hint);
    
  }
}
void main()
{
  var file = File(r"C:\Users\suman\Desktop\Sanscrit wordlee\wordle\server_sending_word.json");
  var content=file.readAsStringSync();
  final Map<String,dynamic> Jsondata=jsonDecode(content);
  print(Jsondata);
  var length=Jsondata["length"];
  var word=Jsondata["word"];
  var date=Jsondata["date"];
  var word_hint=Jsondata["word_hint"];
  var image_hint=Jsondata["image_hint"];
  word_details wword=word_details(length: length, word: word, word_hint: word_hint);
}