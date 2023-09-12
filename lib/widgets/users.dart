import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user/model/user.dart';
import 'package:user/provider/user_provider.dart';
import 'package:user/widgets/new_user.dart';
import 'package:user/widgets/user_list.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  void _openAddUserOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openAddUserOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Consumer<UserProvider>(
          builder: (BuildContext context, value, Widget? child) => UserList()),
    );
  }
}
