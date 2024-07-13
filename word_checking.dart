//need to update the code 
import 'dart:io';

class word_list_try_list_details
{
  List<String> list_of_words;
  int trail_num;
  word_list_try_list_details(this.trail_num): list_of_words =List.filled(6, "")
  {
    
  }
}

void main()
{
  var trail_num=1;
  final correct_word="BHARATH";
  var is_matched=false;
  while (!is_matched)
  {
    print("Enter your word $trail_num : ");
    String? word=stdin.readLineSync();
    if (word=="")
    {
      print("Please Enter Something : ");
      continue;
    }
    else
    {
      if(word==correct_word)
      {
        print("Correct Word !");
        break;
      }
      else
      {
        trail_num+=1;
      }
      if (trail_num>6)
      {
        is_matched=true;
        print("your Trail Chances for Today are Over!");
      }
    }
  }
}