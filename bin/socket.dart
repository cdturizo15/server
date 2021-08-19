

import 'dart:async';

import 'package:socket_io/socket_io.dart';

final server = Server();

void main(){

    server.on('connection', (client){
      print('connect to $client'); 
      client.on('msg',(data){
        print('Location from client $data');
      });
      client.emit('msg','Hello from server');
  });
    server.listen(8000);
}
