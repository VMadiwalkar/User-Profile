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
      builder: (ctx) => const NewUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("No data available"),
    );

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
        builder: (BuildContext context, userProvider, Widget? child) =>
            userProvider.allUser.isEmpty ? mainContent : const UserList(),
      ),
    );
  }
}
