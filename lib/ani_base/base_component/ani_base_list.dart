import 'package:flutter/material.dart';

class AniBaseList extends StatefulWidget {
  const AniBaseList({Key? key}) : super(key: key);

  @override
  _AniBaseListState createState() => _AniBaseListState();
}

class _AniBaseListState extends State<AniBaseList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final listData = [
    UserModel(0, 'One'),
    UserModel(1, 'Two'),
    UserModel(2, 'Three'),
    UserModel(3, 'Four'),
    UserModel(4, 'Five'),
  ];
  int _maxIdValue = 4;

  void addUser() {
    setState(() {
      var index = listData.length;
      ++_maxIdValue;
      listData.add(UserModel(_maxIdValue, 'New $_maxIdValue'));
      _listKey.currentState!
          .insertItem(index, duration: const Duration(milliseconds: 300));
    });
  }

  void deleteUser(int id) {
    setState(() {
      final index = listData.indexWhere((u) => u.id == id);
      var user = listData.removeAt(index);
      _listKey.currentState!.removeItem(
        index,
        (context, animation) {
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: const Interval(0.5, 1.0),
            ),
            child: SizeTransition(
              sizeFactor: CurvedAnimation(
                parent: animation,
                curve: const Interval(0.0, 1.0),
              ),
              axisAlignment: 0.0,
              child: _buildItem(user),
            ),
          );
        },
        duration: const Duration(milliseconds: 600),
      );
    });
  }

  Widget _buildItem(UserModel user) {
    return ListTile(
      key: ValueKey<UserModel>(user),
      title: Text(user.name),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => deleteUser(user.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedList'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.add), onPressed: addUser),
        ],
      ),
      body: SafeArea(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: 5,
          itemBuilder: (context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: _buildItem(listData[index]),
            );
          },
        ),
      ),
    );
  }
}

class UserModel {
  UserModel(this.id, this.name);

  final int id;
  final String name;
}
