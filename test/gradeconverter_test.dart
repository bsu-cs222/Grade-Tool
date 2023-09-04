import 'package:flutter_test/flutter_test.dart';
import 'package:gradecalc/GradeConverter.dart';

void main(){

  test('0 is an F',(){
   var convert = GradeConverter();
   convert.converter(0);
   var expected = convert.letter;
   expect(expected,'F');
  });
  test('65 is an F',(){
    var convert = GradeConverter();
    convert.converter(65);
    var expected = convert.letter;
    expect(expected,'F');
  });
  test('100 is an A',(){
    var convert = GradeConverter();
    convert.converter(100);
    var expected = convert.letter;
    expect(expected,'A');
  });
  test('80 is an C',(){
    var convert = GradeConverter();
    convert.converter(80);
    var expected = convert.letter;
    expect(expected,'C');
  });
}