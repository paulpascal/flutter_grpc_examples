import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  static const host = '10.0.2.2';
  static const port = 8080;

  late ClientChannel clientChannel;
  static final GrpcClientSingleton _singleton = GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    clientChannel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        idleTimeout: Duration(minutes: 1),
      ),
    );
  }
}
