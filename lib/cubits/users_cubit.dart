import 'package:bloc/bloc.dart';

enum UsersState { loading, success, initial }

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersState.initial);

  // Data
  List<String> users = [];

  void getUsers() async {
    emit(UsersState.loading);

    await Future.delayed(Duration(seconds: 2));
    users.addAll(["Ahmed", "Ali"]);

    emit(UsersState.success);
  }
}
