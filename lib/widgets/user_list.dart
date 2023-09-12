import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:user/provider/user_provider.dart';
import 'package:user/widgets/user_item.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder:
          (BuildContext context, UserProvider userProvider, Widget? child) =>
              ListView.builder(
        itemCount: userProvider.allUser.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(userProvider.allUser[index]),
          onDismissed: (direction) {
            userProvider.removeUser(userProvider.allUser[index]);
          },
          child: UserItem(
            user: userProvider.allUser[index],
          ),
        ),
      ),
    );
  }
}
