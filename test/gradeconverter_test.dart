import 'package:flutter_test/flutter_test.dart';
import 'package:gradecalc/GradeConverter.dart';

void main(){
  test('0 is an F',(){
   var convert = GradeConverter();
   convert.converter(0);
   expect(convert.letter,convert.letter = 'F');
  });
  test('65 is an F',(){
    var convert = GradeConverter();
    convert.converter(65);
    expect(convert.letter,convert.letter = 'F');
  });
  test('100 is an A',(){
    var convert = GradeConverter();
    convert.converter(100);
    expect(convert.letter,convert.letter = 'A');
  });
  test('80 is an C',(){
    var convert = GradeConverter();
    convert.converter(80);
    expect(convert.letter,convert.letter = 'C');
  });
}