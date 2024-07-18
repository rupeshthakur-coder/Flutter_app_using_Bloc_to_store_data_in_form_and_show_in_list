import 'package:equatable/equatable.dart';
import 'package:statemanagement/validationForm/data/user_model.dart';

class UserState extends Equatable {
  final List<User> users;

  const UserState(this.users);

  @override
  List<Object> get props => [users];
}

