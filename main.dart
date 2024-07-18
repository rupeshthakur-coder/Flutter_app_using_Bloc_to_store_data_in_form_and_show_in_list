import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/validationForm/presentation/bloc/klist_bloc.dart';
import 'package:statemanagement/validationForm/presentation/page/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'User Form',
        home: UserForm(),
      ),
    );
  }
}
