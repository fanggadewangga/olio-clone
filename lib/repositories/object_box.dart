// ignore_for_file: depend_on_referenced_packages

import '../objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  final Store store;

  ObjectBox._(this.store);

  static Future<ObjectBox> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(dir.path, 'ol10_data'));

    return ObjectBox._(store);
  }
}
