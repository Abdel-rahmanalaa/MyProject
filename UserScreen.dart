import 'package:flutter/material.dart';

class UserModel
{
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id = 0,
    @required this.name = 'AA',
    @required this.phone = '0000',
});
}

class UserScreen extends StatelessWidget {
List <UserModel> users = [
  UserModel(
    id: 1,
    name: 'Abdelrahman Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 2,
    name: 'Moahmed Alaa',
    phone: '+201006628996',
  ),
  UserModel(
    id: 3,
    name: 'Hager Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 1,
    name: 'Abdelrahman Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 2,
    name: 'Moahmed Alaa',
    phone: '+201006628996',
  ),
  UserModel(
    id: 3,
    name: 'Hager Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 1,
    name: 'Abdelrahman Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 2,
    name: 'Moahmed Alaa',
    phone: '+201006628996',
  ),
  UserModel(
    id: 3,
    name: 'Hager Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 1,
    name: 'Abdelrahman Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 2,
    name: 'Moahmed Alaa',
    phone: '+201006628996',
  ),
  UserModel(
    id: 3,
    name: 'Hager Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 1,
    name: 'Abdelrahman Alaa',
    phone: '+201118179930',
  ),
  UserModel(
    id: 2,
    name: 'Moahmed Alaa',
    phone: '+201006628996',
  ),
  UserModel(
    id: 3,
    name: 'Hager Alaa',
    phone: '+201118179930',
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 15.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 25.0,
          backgroundColor: Colors.black,
          child: Text (
            '${user.id}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text (
              '${user.name}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
            Text (
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
