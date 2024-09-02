import 'package:equatable/equatable.dart';
import 'package:student_bloc/Classes/Student.dart';

abstract class StudentState extends Equatable {
  @override
  List<Object> get props => [];
}

class StudentInitial extends StudentState {
  final String message;

  StudentInitial({this.message = "Welcome! Press the button to load students."});

  @override
  List<Object> get props => [message];
}

class StudentLoading extends StudentState {}

class StudentLoaded extends StudentState {
  final List<Student> students;

  StudentLoaded(this.students);

  @override
  List<Object> get props => [students];
}

class StudentEmpty extends StudentState {}

class StudentError extends StudentState {
  final String message;

  StudentError(this.message);

  @override
  List<Object> get props => [message];
}