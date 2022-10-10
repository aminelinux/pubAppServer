import 'dart:io';

List<ChatClient> clients = [];
void main() {
  ServerSocket socket;
  ServerSocket.bind('127.0.0.1', 9000).then((ServerSocket server) {
    socket = server;
    server.listen(handleClient);
  });
}

void handleClient(Socket client) {
  print('Connection from '
      '${client.remoteAddress.address}:${client.remotePort}');

  clients.add(ChatClient(client));

  client.write("Welcome Client App!!! "
      "There are ${clients.length - 1} other clients\n");
}

class ChatClient {
  late Socket _socket;
  late String _address;
  late int _port;

  ChatClient(Socket s) {
    _socket = s;
    _address = _socket.remoteAddress.address;
    _port = _socket.remotePort;

    _socket.listen(messageHandler,
        onError: errorHandler, onDone: finishedHandler);
  }

  void messageHandler(List<int> data) {
    String message = String.fromCharCodes(data).trim();
    distributeMessage(this, '${_address}:${_port} Message: $message');
  }

  void errorHandler(error) {
    print('${_address}:${_port} Error: $error');
    removeClient(this);
    _socket.close();
  }

  void finishedHandler() {
    print('${_address}:${_port} Disconnected');
    removeClient(this);
    _socket.close();
  }

  void write(String message) {
    _socket.write(message);
  }

  void distributeMessage(ChatClient client, String message) {
    for (ChatClient c in clients) {
      if (c != client) {
        c.write(message + "\n");
      }
    }
  }

  void handleConnection(Socket client) {
    print('Connection from '
        '${client.remoteAddress.address}:${client.remotePort}');

    clients.add(ChatClient(client));

    client.write("Welcome "
        "There are ${clients.length - 1} other clients\n");
  }

  void removeClient(ChatClient client) {
    clients.remove(client);
  }
}
