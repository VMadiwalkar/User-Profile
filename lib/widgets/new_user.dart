import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user/model/user.dart';
import 'package:user/provider/user_provider.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    final fnameController = TextEditingController();
    final lnameController = TextEditingController();
    final ageController = TextEditingController();
    final mobController = TextEditingController();
    return Consumer<UserProvider>(
      builder: (BuildContext context, userProvider, Widget? child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              TextField(
                decoration: InputDecoration(label: Text('First Name')),
                controller: fnameController,
              ),
              TextField(
                decoration: InputDecoration(label: Text('Last Name')),
                controller: lnameController,
              ),
              TextField(
                decoration: InputDecoration(label: Text('Age')),
                keyboardType: TextInputType.number,
                controller: ageController,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(label: Text('Mobile Number')),
                controller: mobController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        userProvider.addUser(User(
                            firstName: fnameController.text,
                            lastName: lnameController.text,
                            age: int.parse(ageController.text),
                            number: double.parse(mobController.text)));

                        // onAddUser(User(
                        //     firstName: fnameController.text,
                        //     lastName: lnameController.text,
                        //     age: int.parse(ageController.text),
                        //     number: double.parse(mobController.text)));
                      },
                      child: Text("Save")),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
