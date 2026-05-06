import 'package:cai4_swd8_g1/cubits/counter_cubit.dart';
import 'package:cai4_swd8_g1/cubits/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UsersCubit>().getUsers();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BlocConsumer<UsersCubit, UsersState>(
            builder: (context, state) {
              if (state == UsersState.loading) {
                return CircularProgressIndicator();
              } else if (state == UsersState.success) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Text(
                      context.read<UsersCubit>().users[index],
                      style: TextStyle(color: Colors.black),
                    );
                  },
                  itemCount: context.read<UsersCubit>().users.length,
                );
              }

              return Text("Users");
            },
            listener: (context, state) {
              if (state == UsersState.success) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Users Success")));
              }
            },
          ),

          BlocConsumer<CounterCubit, int>(
            builder: (context, state) {
              return Text("$state");
            },
            listener: (context, state) {
              if (state == 5 || state == -5) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Done")));
              }
            },
          ),
          // BlocListener<CounterCubit, int>(
          //   listener: (context, state) {
          // if (state == 5 || state == -5) {
          // ScaffoldMessenger.of(
          //   context,
          // ).showSnackBar(SnackBar(content: Text("Done")));
          // }
          //   },
          //   child: SizedBox(),
          // ),
          // BlocBuilder<CounterCubit, int>(
          //   builder: (context, state) {
          //     return Text("$state");
          //   },
          // ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: Text("+"),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: Text("-"),
          ),
        ],
      ),
    );
  }
}
