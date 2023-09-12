import 'package:flutter/material.dart';
import 'package:gradecalc/grade_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor:Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _messege = 'Enter Grade Number';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TextField(controller: _controller,),
        ElevatedButton(
            onPressed: _onButtonPressed,
            child: Text(
                'Convert'
            )),
        Text(_messege),
      ],
    );
  }
  void _onButtonPressed(){
    setState((){
      GradeChange convert = GradeChange();
      int grade = int.parse(_controller.text);
      convert.swap(grade);
      _messege = convert.letter;
    });
  }
}



