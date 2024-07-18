// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:statemanagement/validationForm/presentation/bloc/klist_bloc.dart';
// import 'package:statemanagement/validationForm/presentation/bloc/klist_state.dart';

// class UserList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User List'),
//       ),
//       body: BlocBuilder<UserBloc, UserState>(
//         builder: (context, state) {
//           if (state.users.isEmpty) {
//             return Center(
//               child: Text('No users added yet'),
//             );
//           }
//           return ListView.builder(
//             itemCount: state.users.length,
//             itemBuilder: (context, index) {
//               final user = state.users[index];
//               return ListTile(
//                 title: Text(user.name),
//                 subtitle: Text(
//                   'DOB: ${DateFormat('yyyy-MM-dd').format(user.dob)}\nEmail: ${user.email}\nPassword: ${user.password}',
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:statemanagement/validationForm/presentation/bloc/klist_bloc.dart';
import 'package:statemanagement/validationForm/presentation/bloc/klist_state.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.users.isEmpty) {
            return Center(
              child: Text('No users added yet'),
            );
          }
          return ListView.builder(
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              final user = state.users[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  title: Text(
                    user.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text('DOB: ${DateFormat('yyyy-MM-dd').format(user.dob)}'),
                      SizedBox(height: 4),
                      Text('Email: ${user.email}'),
                      SizedBox(height: 4),
                      Text('Password: ${user.password}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
