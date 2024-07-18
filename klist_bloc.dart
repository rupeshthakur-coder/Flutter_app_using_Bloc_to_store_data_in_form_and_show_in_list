import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/validationForm/data/user_model.dart';
import 'package:statemanagement/validationForm/presentation/bloc/klist_event.dart';
import 'package:statemanagement/validationForm/presentation/bloc/klist_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState([])) {
    on<AddUser>(_onAddUser);
  }

  void _onAddUser(AddUser event, Emitter<UserState> emit) {
    final updatedUsers = List<User>.from(state.users)
      ..add(User(event.name, event.dob, event.email, event.password));
    emit(UserState(updatedUsers));
  }
}
