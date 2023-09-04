import 'package:flutter_test/flutter_test.dart';
import 'package:gradecalc/GradeConverter.dart';

void main(){
  List<int> data = [0,65,100,80];
  List<String> expected = ['F','F','A','C'];

  for(int i = 0; i < data.length; i++){
    test('${data[i]} is ${expected[i]}',(){
      var convert = GradeConverter();
      convert.converter(data[i]);
      var result = convert.letter;
      expect(result,expected[i]);
    });
  }
}