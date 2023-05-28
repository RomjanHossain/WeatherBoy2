import 'package:isar/isar.dart';

part 'cloud_db.g.dart';

@collection
class CloudsDB {
  Id id = Isar.autoIncrement;

  /// Cloudiness, %
  final int all;

  CloudsDB({
    required this.all,
  });
}
