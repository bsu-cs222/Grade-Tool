class GradeConverter{
  late String letter;
  converter(int grade){
     if(grade <= 100 && grade >= 93){
       letter = 'A';
     }
     else if(grade <= 92 && grade >= 83){
       letter = 'B';
     }
     else if(grade <= 82 && grade >= 76){
       letter = 'C';
     }
     else if(grade <= 75 && grade >= 66){
       letter = 'D';
     }
     else if(grade <=65 && grade >= 0){
       letter = 'F';
     }
     else{
       letter = 'No Letter Applicable';
     }
   }
}