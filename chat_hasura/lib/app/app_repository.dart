import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:chat_hasura/app/models/message_model.dart';
import 'package:chat_hasura/app/models/user_model.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AppRepository extends Disposable {
  final HasuraConnect connection;

  AppRepository(this.connection);

  Future<UserModel> getUser(String user) async {
    String query = """
      createUser(\$name:String!) {
        users(where: {name: {_eq: \$name}}) {
          id
          name
        }
      }
    """;

    var data = await connection.query(query, variables: {"name": user});
    if (data["data"]["users"].isEmpty){
      return createUser(user);
    } else {
      return UserModel.fromJson(data["data"]["users"][0]);
    }
  }

  Future<UserModel> createUser(String name) async {
    String query = """
      mutation createUser(\$name:String!) {
        insert_users(objects: {name: \$name}) {
          returning {
            id
          }
        }
      }
    """;

    var data = await connection.mutation(query, variables: {"name": name});
    var id = data["data"]["insert_users"]["returning"][0]["id"];
    return UserModel(id: id, name: name);
  }

  Stream<List<MessageModel>> getMessages(){
    var query = """
      subscription{
        messages(order_by: {id: desc}) {
          content
          id
          user {
            id
            name
          }
        }
      }
    """;

    Snapshot snapshot = connection.subscription(query);
    return snapshot
      .map((jsonList) => MessageModel.fromJsonList(jsonList["data"]["messages"]),
    );
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
