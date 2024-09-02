import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_bloc/Classes/Student.dart';
import 'student_event.dart';
import 'student_state.dart';


class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<FetchStudents>(onFetchStudents);
  }

  void onFetchStudents(FetchStudents event, Emitter<StudentState> emit) async {
    emit(StudentLoading());

    try {
    
      await Future.delayed(Duration(seconds: 2));
      final students = fetchStudents();

      if (students.isEmpty) {
        emit(StudentEmpty());
      } else {
        emit(StudentLoaded(students));
      }
    } catch (e) {
      emit(StudentError("Failed to fetch students"));
    }
  }

  List<Student> fetchStudents() {
    
    return [
      Student(name: "John", image: "assets/images/111.png", gpa: 3.5),
      Student(name: "Nada ", image: "assets/images/111.png", gpa: 3.8),
      Student(name: "Akram ", image: "assets/images/111.png", gpa: 4),
      Student(name: "Ahmed ", image: "assets/images/111.png", gpa: 4),
      Student(name: "Ahmed", image: "assets/images/111.png", gpa: 1),
      Student(name: "Nada ", image: "assets/images/111.png", gpa: 2),
      Student(name: "Youssef ", image: "assets/images/111.png", gpa: 3),
      Student(name: "Zain ", image: "assets/images/111.png", gpa: 2.5),
      Student(name: "Ameer ", image: "assets/images/111.png", gpa: 3.7),
      Student(name: "Mariam ", image: "assets/images/111.png", gpa: 3.5),
      Student(name: "Akram ", image: "assets/images/111.png", gpa: 4),
      Student(name: "Akram ", image: "assets/images/111.png", gpa: 4),
    ];
  }
}