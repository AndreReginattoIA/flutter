import 'package:hasura_connect/hasura_connect.dart';
import 'package:mysql1/mysql1.dart';
import 'package:postgres/postgres.dart';

class Mysql {
  static String host = "testdb.cnmcfckfvfxi.us-east-2.rds.amazonaws.com",
                user = "admin",
                password = "masterkey",
                db = "testdb";

  static int port = 3306;

  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
      timeout: Duration(minutes: 1),
    );
    return await MySqlConnection.connect(settings);
  }
}

class Postgres{
  var connection = new PostgreSQLConnection(
      "testpostgres.cnmcfckfvfxi.us-east-2.rds.amazonaws.com", 
      5432, 
      "testdb", 
      username: "SYSDBA", 
      password: "masterkey",
    );
  
  Future getConnection() async{
    await connection.open();  
  }
}

class Hasura {
  HasuraConnect hasura;

  Future getFirstProduct() async{
    final hasura = HasuraConnect("https://parabletest.herokuapp.com/v1/graphql");

    var data = await hasura.query(
      """
        {
          products(where: {id: {_eq: 1}}) {
            description
          }
        }

      """
    );

    print(data);
  }
}