

import 'dart:async';

import 'package:socket_io/socket_io.dart';

final server = Server();

void main(){

    server.on('connection', (client){
      print('connect to $client');
      client.on('stream',(data){
      print('data form client $data');
      });
      Timer(Duration(seconds: 5), (){
        client.emit('msg', 'Hello from server');
      });
  });
    server.listen(9000);
}
