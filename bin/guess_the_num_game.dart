import 'dart:io';
import 'dart:math';
void main() {
  
  Random rnd;
  int min = 0;
  int max = 20;
  rnd =  Random();
  int r = min + rnd.nextInt(max - min);
  print('Welcome to guess the number game');
  print('Guess the Number from 0 to 20 ');
  
  do{
  var number = stdin.readLineSync();
  int option = int.parse(number!);
  if(option==r){
    print('Well done, you are smart the number was $option');
    break;
  }
  else if(option<r && option>=0){
    print('Try again, up the guess the number is not $option');
  }
  else if(option<=20 && option>r){
    print('Try again, low the guess the number is not $option');
  }
  else{
    print('Try again, the $option not at the range of guessed numbers(0-20)');
  }

  }while(true);

  
}
