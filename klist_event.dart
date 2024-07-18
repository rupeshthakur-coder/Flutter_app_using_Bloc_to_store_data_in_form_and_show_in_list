import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class AddUser extends UserEvent {
  final String name;
  final DateTime dob;
  final String email;
  final String password;

  const AddUser(this.name, this.dob, this.email, this.password);

  @override
  List<Object> get props => [name, dob, email, password];
}
