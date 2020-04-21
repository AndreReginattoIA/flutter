import 'package:chat_hasura/app/app_repository.dart';
import 'package:chat_hasura/app/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../app_bloc.dart';
import '../../app_module.dart';
import '../../app_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var repo = AppModule.to.get<AppRepository>();
  Stream<List<MessageModel>> messagesOut;

  @override
  void initState() {
    super.initState();
    messagesOut = repo.getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<MessageModel>>(
        stream: messagesOut,
        builder: (context, snapshot){
          if (!snapshot.hasData) 
            return CircularProgressIndicator();
          
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(snapshot.data[index].user.name),
                subtitle: Text(snapshot.data[index].content),
              );
            },
          );
        },
      )
    );
  }
}
