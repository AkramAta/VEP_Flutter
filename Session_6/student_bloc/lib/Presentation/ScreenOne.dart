import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_bloc/Business_Logic/bloc/student_bloc.dart';
import 'package:student_bloc/Business_Logic/bloc/student_event.dart';
import 'package:student_bloc/Business_Logic/bloc/student_state.dart';


class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
      ),
      body: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          if (state is StudentInitial) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<StudentBloc>().add(FetchStudents());
                    },
                    child: Text("Load Students"),
                  ),
                ],
              ),
            );
          } else if (state is StudentLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is StudentLoaded) {
            return ListView.builder(
              itemCount: state.students.length,
              itemBuilder: (context, index) {
                final student = state.students[index];
                return ListTile(
                  leading: Image.asset(student.image),
                  title: Text(student.name),
                  subtitle: Text("GPA: ${student.gpa}"),
                );
              },
            );
          } else if (state is StudentEmpty) {
            return Center(child: Text("No students found"));
          } else if (state is StudentError) {
            return Center(child: Text(state.message));
          } else {
            return Center(child: Text("Press the button to fetch students"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<StudentBloc>().add(FetchStudents());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}