import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_bloc/Business_Logic/bloc/student_bloc.dart';
import 'package:student_bloc/Presentation/ScreenOne.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => StudentBloc(),
        child: StudentPage(),
      ),
    );
  }
}