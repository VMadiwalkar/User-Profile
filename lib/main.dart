import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user/provider/user_provider.dart';
import 'package:user/widgets/users.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: ((context) => UserProvider()))],
    child: const MaterialApp(
      home: Users(),
    ),
  ));
}
