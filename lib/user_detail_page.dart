import 'package:flutter/material.dart';

import 'package:flutter_sabac_5/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.aty),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage(user.profilSurot),
          ),
          Text(
            user.kesibi,
            style: const TextStyle(fontSize: 25, color: Colors.lightBlue),
          ),
          Text(
            '${user.jash}',
            style: const TextStyle(fontSize: 25, color: Colors.lightBlue),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(user.TajryibaJolu),
          ),
        ],
      ),
    );
  }
}
