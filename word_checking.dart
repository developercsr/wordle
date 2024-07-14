//need to update the code
import 'dart:io';
class Words_try
{
  Map<int,String?> wordstry;
  Words_try():wordstry= {};
  //words appending to dictionary
  void add_words(int try_num_,String? word)
  {
    wordstry[try_num_]=word;
  }
  void print_dictionary()
  {
    wordstry.forEach((key,value)
    {
      print(" At trail $key the word is $value");
    });
  }
  
}

void main()
{
  var trail_num=1;
  final correct_word="BHARATH";//for testing
  var is_matched=false;
  Words_try my_try=Words_try();
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
      my_try.add_words(trail_num, word);
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
  my_try.print_dictionary();
}