import 'package:flutter/material.dart';
import 'package:user/model/user.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        isThreeLine: true,
        title: Text('${user.firstName} ${user.lastName}'),
        subtitle: Text('Age ${user.age} \n Mob: ${user.number}'),
      ),
    );
  }
}
