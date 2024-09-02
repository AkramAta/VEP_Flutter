import 'package:equatable/equatable.dart';

abstract class StudentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchStudents extends StudentEvent {}
