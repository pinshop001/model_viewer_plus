import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_proxy/shelf_proxy.dart';

Future<void> main() async {
  final server = await shelf_io.serve(
    proxyHandler('https://www.supply-salon.com'),
    'localhost',
    8080,
  );

  print('Proxying at https://${server.address.host}:${server.port}');
}
